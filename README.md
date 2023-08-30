## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | 1.14.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubectl"></a> [kubectl](#provider\_kubectl) | 1.14.0 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubectl_manifest.manifest](https://registry.terraform.io/providers/gavinbunney/kubectl/1.14.0/docs/resources/manifest) | resource |
| [kubectl_manifest.namespace](https://registry.terraform.io/providers/gavinbunney/kubectl/1.14.0/docs/resources/manifest) | resource |
| [kubectl_path_documents.manifest](https://registry.terraform.io/providers/gavinbunney/kubectl/1.14.0/docs/data-sources/path_documents) | data source |
| [kubernetes_service.emailservice](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/data-sources/service) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_emailservice_service_name"></a> [emailservice\_service\_name](#input\_emailservice\_service\_name) | Online Boutique emailservice service name | `string` | `"emailservice"` | no |
| <a name="input_image_registry"></a> [image\_registry](#input\_image\_registry) | Image registry | `string` | `"docker.io"` | no |
| <a name="input_image_repository"></a> [image\_repository](#input\_image\_repository) | Image repository | `string` | `"liyinlin"` | no |
| <a name="input_image_version"></a> [image\_version](#input\_image\_version) | Image tag | `string` | `"v0.6.0"` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace to deploy | `string` | n/a | yes |
| <a name="input_walrus_metadata_namespace_name"></a> [walrus\_metadata\_namespace\_name](#input\_walrus\_metadata\_namespace\_name) | Walrus metadata namespace name. | `string` | `""` | no |
| <a name="input_walrus_metadata_service_name"></a> [walrus\_metadata\_service\_name](#input\_walrus\_metadata\_service\_name) | Walrus metadata service name. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_service_ip"></a> [service\_ip](#output\_service\_ip) | Service IP |
