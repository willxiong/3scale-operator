package openapi

import (
	capabilitiesv1beta1 "github.com/3scale/3scale-operator/pkg/apis/capabilities/v1beta1"
	controllerhelper "github.com/3scale/3scale-operator/pkg/controller/helper"
	"github.com/3scale/3scale-operator/pkg/reconcilers"

	"github.com/getkin/kin-openapi/openapi3"
	"github.com/go-logr/logr"
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
		openapiCR:       openapiCR,
		openapiObj:      openapiObj,
		providerAccount: providerAccount,
		logger:          logger,
	}
}

func (p *ProductReconciler) Reconcile() (*capabilitiesv1beta1.Product, error) {
	return nil, nil
}
