package helper

import (
	"bytes"
	"regexp"
	"strings"
	"text/template"

	"github.com/getkin/kin-openapi/openapi3"
)

var (
	// NonWordCharRegexp not word characters (== [^0-9A-Za-z_])
	NonWordCharRegexp = regexp.MustCompile(`\W`)

	// TemplateRegexp used to render openapi server URLs
	TemplateRegexp = regexp.MustCompile(`{([\w]+)}`)

	// NonAlphanumRegexp not alphanumeric
	NonAlphanumRegexp = regexp.MustCompile(`[^0-9A-Za-z]`)
)

func SystemNameFromOpenAPITitle(obj *openapi3.Swagger) string {
	openapiTitle := obj.Info.Title
	openapiTitleToLower := strings.ToLower(openapiTitle)
	return NonWordCharRegexp.ReplaceAllString(openapiTitleToLower, "_")
}

func K8sNameFromOpenAPITitle(obj *openapi3.Swagger) string {
	openapiTitle := obj.Info.Title
	openapiTitleToLower := strings.ToLower(openapiTitle)
	return NonAlphanumRegexp.ReplaceAllString(openapiTitleToLower, "")
}

func RenderOpenAPIServerURL(server *openapi3.Server) (string, error) {
	if server == nil {
		return "", nil
	}

	data := &struct {
		Data map[string]string
	}{
		map[string]string{},
	}

	for variableName, variable := range server.Variables {
		data.Data[variableName] = variable.Default.(string)
	}

	urlTemplate := TemplateRegexp.ReplaceAllString(server.URL, `{{ index .Data "$1" }}`)

	tObj, err := template.New(server.URL).Parse(urlTemplate)
	if err != nil {
		return "", err
	}

	var tpl bytes.Buffer
	err = tObj.Execute(&tpl, data)
	if err != nil {
		return "", err
	}

	return tpl.String(), nil
}

type ExtendedSecurityRequirement struct {
	*openapi3.SecuritySchemeRef

	Scopes []string
}

func NewExtendedSecurityRequirement(secSchemeRef *openapi3.SecuritySchemeRef, scopes []string) *ExtendedSecurityRequirement {
	return &ExtendedSecurityRequirement{
		SecuritySchemeRef: secSchemeRef,
		Scopes:            scopes,
	}
}

func OpenAPIGlobalSecurityRequirements(openapiObj *openapi3.Swagger) []*ExtendedSecurityRequirement {
	extendedSecRequirements := make([]*ExtendedSecurityRequirement, 0)

	for _, secReq := range openapiObj.Security {
		for secReqItemName, scopes := range secReq {
			secScheme, ok := openapiObj.Components.SecuritySchemes[secReqItemName]
			if !ok {
				// should never happen. OpenAPI validation should detect this issue
				continue
			}

			extendedSecRequirements = append(extendedSecRequirements, NewExtendedSecurityRequirement(secScheme, scopes))
		}
	}

	return extendedSecRequirements
}
