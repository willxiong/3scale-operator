package openapi

import (
	"errors"
	"fmt"
	"reflect"
	"strings"

	capabilitiesv1beta1 "github.com/3scale/3scale-operator/pkg/apis/capabilities/v1beta1"
	"github.com/3scale/3scale-operator/pkg/common"
	controllerhelper "github.com/3scale/3scale-operator/pkg/controller/helper"
	"github.com/3scale/3scale-operator/pkg/helper"
	"github.com/3scale/3scale-operator/pkg/reconcilers"
	"github.com/google/go-cmp/cmp"

	"github.com/getkin/kin-openapi/openapi3"
	"github.com/go-logr/logr"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	"k8s.io/apimachinery/pkg/util/validation"
)

type ProductReconciler struct {
	*reconcilers.BaseReconciler
	openapiCR       *capabilitiesv1beta1.Openapi
	openapiObj      *openapi3.Swagger
	providerAccount *controllerhelper.ProviderAccount
	logger          logr.Logger
}

func NewProductReconciler(b *reconcilers.BaseReconciler,
	openapiCR *capabilitiesv1beta1.Openapi,
	openapiObj *openapi3.Swagger,
	providerAccount *controllerhelper.ProviderAccount,
	logger logr.Logger,
) *ProductReconciler {
	return &ProductReconciler{
		BaseReconciler:  b,
		openapiCR:       openapiCR,
		openapiObj:      openapiObj,
		providerAccount: providerAccount,
		logger:          logger,
	}
}

func (p *ProductReconciler) Logger() logr.Logger {
	return p.logger
}

func (p *ProductReconciler) Reconcile() (*capabilitiesv1beta1.Product, error) {
	desired, err := p.desired()
	if err != nil {
		return nil, err
	}

	return nil, p.ReconcileResource(&capabilitiesv1beta1.Product{}, desired, p.productMutator)
}

func (p *ProductReconciler) desired() (*capabilitiesv1beta1.Product, error) {
	// product obj name
	objName := p.desiredObjName()

	errStrings := validation.IsDNS1123Label(objName)
	if len(errStrings) > 0 {
		return nil, errors.New(strings.Join(errStrings, "--"))
	}

	// product name
	name := p.openapiObj.Info.Title

	// product system name
	systemName := p.desiredSystemName()

	// product description
	description := fmt.Sprintf(p.openapiObj.Info.Description)

	product := &capabilitiesv1beta1.Product{
		ObjectMeta: metav1.ObjectMeta{
			Name:      objName,
			Namespace: p.openapiCR.Namespace,
		},
		Spec: capabilitiesv1beta1.ProductSpec{
			Name:               name,
			SystemName:         systemName,
			Description:        description,
			ProviderAccountRef: p.openapiCR.Spec.ProviderAccountRef,
		},
	}

	// Deployment
	product.Spec.Deployment = p.desiredDeployment()

	// Mapping rules

	// backend usages

	// metrics

	// methods

	// application plans

	product.SetDefaults(p.Logger())

	// internal validation
	validationErrors := product.Validate()
	if len(validationErrors) > 0 {
		return nil, errors.New(validationErrors.ToAggregate().Error())
	}

	err := p.SetOwnerReference(p.openapiCR, product)
	if err != nil {
		return nil, err
	}

	return product, nil
}

func (p *ProductReconciler) productMutator(existingObj, desiredObj common.KubernetesObject) (bool, error) {
	existing, ok := existingObj.(*capabilitiesv1beta1.Product)
	if !ok {
		return false, fmt.Errorf("%T is not a *capabilitiesv1beta1.Product", existingObj)
	}
	desired, ok := desiredObj.(*capabilitiesv1beta1.Product)
	if !ok {
		return false, fmt.Errorf("%T is not a *capabilitiesv1beta1.Product", desiredObj)
	}

	// Metadata labels and annotations
	updated := helper.EnsureObjectMeta(existing, desired)

	// OwnerRefenrence
	updatedTmp, err := p.EnsureOwnerReference(p.openapiCR, existing)
	if err != nil {
		return false, err
	}
	updated = updated || updatedTmp

	// Maybe too rough compare method?
	// What if product controller adds or modifies something?
	// the openapi controller will be reconciliating.
	// maybe compare only "managed" fields
	if !reflect.DeepEqual(existing.Spec, desired.Spec) {
		diff := cmp.Diff(existing.Spec, desired.Spec)
		p.Logger().Info(fmt.Sprintf("%s spec has changed: %s", common.ObjectInfo(desired), diff))
		existing.Spec = desired.Spec
		updated = true
	}

	return updated, nil
}

func (p *ProductReconciler) desiredSystemName() string {
	// Same as backend system name
	// Duplicated implementation. Refactor
	if p.openapiCR.Spec.ProductSystemName != "" {
		return p.openapiCR.Spec.ProductSystemName
	}

	return helper.SystemNameFromOpenAPITitle(p.openapiObj)
}

func (p *ProductReconciler) desiredObjName() string {
	// DNS1123 Label compliant name. Due to UIDs are 36 characters of length this
	// means that the maximum prefix lenght that can be provided is of 26
	// characters. If the generated name is not DNS1123 compliant an error is
	// returned
	// Maybe truncate?
	return fmt.Sprintf("%s-%s", helper.K8sNameFromOpenAPITitle(p.openapiObj), string(p.openapiCR.UID))
}

func (p *ProductReconciler) desiredDeployment() *capabilitiesv1beta1.ProductDeploymentSpec {
	deployment := &capabilitiesv1beta1.ProductDeploymentSpec{}

	if p.openapiCR.Spec.ProductionPublicBaseURL != "" || p.openapiCR.Spec.StagingPublicBaseURL != "" {
		// Self managed deployment
		deployment.ApicastSelfManaged = &capabilitiesv1beta1.ApicastSelfManagedSpec{
			StagingPublicBaseURL:    &p.openapiCR.Spec.StagingPublicBaseURL,
			ProductionPublicBaseURL: &p.openapiCR.Spec.ProductionPublicBaseURL,
			Authentication:          p.desiredAuthentication(),
		}
	} else {
		// Hosted deployment
		deployment.ApicastHosted = &capabilitiesv1beta1.ApicastHostedSpec{
			Authentication: p.desiredAuthentication(),
		}
	}
}

func (p *ProductReconciler) desiredAuthentication() *capabilitiesv1beta1.AuthenticationSpec {
	// nil value also returns 0 length
	if len(p.openapiObj.Security) == 0 {
		return nil
	}

	authentication := &capabilitiesv1beta1.ProductDeploymentSpec{}
	return authentication
}
