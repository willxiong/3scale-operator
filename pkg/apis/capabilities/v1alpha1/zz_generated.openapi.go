// +build !ignore_autogenerated

// This file was autogenerated by openapi-gen. Do not edit it manually!

package v1alpha1

import (
	spec "github.com/go-openapi/spec"
	common "k8s.io/kube-openapi/pkg/common"
)

func GetOpenAPIDefinitions(ref common.ReferenceCallback) map[string]common.OpenAPIDefinition {
	return map[string]common.OpenAPIDefinition{
		"./pkg/apis/capabilities/v1alpha1.Tenant":       schema_pkg_apis_capabilities_v1alpha1_Tenant(ref),
		"./pkg/apis/capabilities/v1alpha1.TenantSpec":   schema_pkg_apis_capabilities_v1alpha1_TenantSpec(ref),
		"./pkg/apis/capabilities/v1alpha1.TenantStatus": schema_pkg_apis_capabilities_v1alpha1_TenantStatus(ref),
	}
}

func schema_pkg_apis_capabilities_v1alpha1_Tenant(ref common.ReferenceCallback) common.OpenAPIDefinition {
	return common.OpenAPIDefinition{
		Schema: spec.Schema{
			SchemaProps: spec.SchemaProps{
				Description: "Tenant is the Schema for the tenants API",
				Type:        []string{"object"},
				Properties: map[string]spec.Schema{
					"kind": {
						SchemaProps: spec.SchemaProps{
							Description: "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds",
							Type:        []string{"string"},
							Format:      "",
						},
					},
					"apiVersion": {
						SchemaProps: spec.SchemaProps{
							Description: "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources",
							Type:        []string{"string"},
							Format:      "",
						},
					},
					"metadata": {
						SchemaProps: spec.SchemaProps{
							Ref: ref("k8s.io/apimachinery/pkg/apis/meta/v1.ObjectMeta"),
						},
					},
					"spec": {
						SchemaProps: spec.SchemaProps{
							Ref: ref("./pkg/apis/capabilities/v1alpha1.TenantSpec"),
						},
					},
					"status": {
						SchemaProps: spec.SchemaProps{
							Ref: ref("./pkg/apis/capabilities/v1alpha1.TenantStatus"),
						},
					},
				},
			},
		},
		Dependencies: []string{
			"./pkg/apis/capabilities/v1alpha1.TenantSpec", "./pkg/apis/capabilities/v1alpha1.TenantStatus", "k8s.io/apimachinery/pkg/apis/meta/v1.ObjectMeta"},
	}
}

func schema_pkg_apis_capabilities_v1alpha1_TenantSpec(ref common.ReferenceCallback) common.OpenAPIDefinition {
	return common.OpenAPIDefinition{
		Schema: spec.Schema{
			SchemaProps: spec.SchemaProps{
				Description: "TenantSpec defines the desired state of Tenant",
				Type:        []string{"object"},
				Properties: map[string]spec.Schema{
					"username": {
						SchemaProps: spec.SchemaProps{
							Type:   []string{"string"},
							Format: "",
						},
					},
					"email": {
						SchemaProps: spec.SchemaProps{
							Type:   []string{"string"},
							Format: "",
						},
					},
					"organizationName": {
						SchemaProps: spec.SchemaProps{
							Type:   []string{"string"},
							Format: "",
						},
					},
					"systemMasterUrl": {
						SchemaProps: spec.SchemaProps{
							Type:   []string{"string"},
							Format: "",
						},
					},
					"tenantSecretRef": {
						SchemaProps: spec.SchemaProps{
							Ref: ref("k8s.io/api/core/v1.SecretReference"),
						},
					},
					"passwordCredentialsRef": {
						SchemaProps: spec.SchemaProps{
							Ref: ref("k8s.io/api/core/v1.SecretReference"),
						},
					},
					"masterCredentialsRef": {
						SchemaProps: spec.SchemaProps{
							Ref: ref("k8s.io/api/core/v1.SecretReference"),
						},
					},
				},
				Required: []string{"username", "email", "organizationName", "systemMasterUrl", "tenantSecretRef", "passwordCredentialsRef", "masterCredentialsRef"},
			},
		},
		Dependencies: []string{
			"k8s.io/api/core/v1.SecretReference"},
	}
}

func schema_pkg_apis_capabilities_v1alpha1_TenantStatus(ref common.ReferenceCallback) common.OpenAPIDefinition {
	return common.OpenAPIDefinition{
		Schema: spec.Schema{
			SchemaProps: spec.SchemaProps{
				Description: "TenantStatus defines the observed state of Tenant",
				Type:        []string{"object"},
				Properties: map[string]spec.Schema{
					"tenantId": {
						SchemaProps: spec.SchemaProps{
							Type:   []string{"integer"},
							Format: "int64",
						},
					},
					"adminId": {
						SchemaProps: spec.SchemaProps{
							Type:   []string{"integer"},
							Format: "int64",
						},
					},
				},
				Required: []string{"tenantId", "adminId"},
			},
		},
	}
}
