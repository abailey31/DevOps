<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | =4.1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | =4.1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_kubernetes_cluster.example](https://registry.terraform.io/providers/hashicorp/azurerm/4.1.0/docs/resources/kubernetes_cluster) | resource |
| [azurerm_resource_group.example](https://registry.terraform.io/providers/hashicorp/azurerm/4.1.0/docs/resources/resource_group) | resource |
| [azurerm_storage_account.example](https://registry.terraform.io/providers/hashicorp/azurerm/4.1.0/docs/resources/storage_account) | resource |
| [azurerm_storage_blob.example](https://registry.terraform.io/providers/hashicorp/azurerm/4.1.0/docs/resources/storage_blob) | resource |
| [azurerm_storage_container.example](https://registry.terraform.io/providers/hashicorp/azurerm/4.1.0/docs/resources/storage_container) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_dns_prefix"></a> [cluster\_dns\_prefix](#input\_cluster\_dns\_prefix) | (Optional) DNS prefix specified when creating the managed cluster. Possible values must begin and end with a letter or number, contain only letters, numbers, and hyphens and be between 1 and 54 characters in length. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | (Required) The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_env_tag"></a> [env\_tag](#input\_env\_tag) | (Required) Specifies the environment for this cluster. | `string` | n/a | yes |
| <a name="input_identity_type"></a> [identity\_type](#input\_identity\_type) | (Optional) Specifies the type of Managed Service Identity that should be configured on this Kubernetes Cluster. Possible values are SystemAssigned or UserAssigned. Defaults to SystemAssigned. | `string` | `"SystemAssigned"` | no |
| <a name="input_node_pool_name"></a> [node\_pool\_name](#input\_node\_pool\_name) | (Required) The name which should be used for the default Kubernetes Node Pool. | `string` | n/a | yes |
| <a name="input_node_pool_node_count"></a> [node\_pool\_node\_count](#input\_node\_pool\_node\_count) | (Optional) The number of nodes which should exist in this Node Pool. Defaults to 1. | `number` | `1` | no |
| <a name="input_node_pool_vm_size"></a> [node\_pool\_vm\_size](#input\_node\_pool\_vm\_size) | (Optional) The size of the Virtual Machine, such as Standard\_DS2\_v2. temporary\_name\_for\_rotation must be specified when attempting a resize. | `string` | `"Standard_D2_v2"` | no |
| <a name="input_requires_storage_blob"></a> [requires\_storage\_blob](#input\_requires\_storage\_blob) | (Optional) Flags whether or not to create a storage blob for this cluster. Defaults to false. | `bool` | `false` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | (Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required) The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created. | `string` | n/a | yes |
| <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | (Required) Specifies the name of the storage account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created. This must be unique across the entire Azure service, not just within the resource group. | `string` | n/a | yes |
| <a name="input_storage_account_repl_type"></a> [storage\_account\_repl\_type](#input\_storage\_account\_repl\_type) | (Optional) Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS. Changing this forces a new resource to be created when types LRS, GRS and RAGRS are changed to ZRS, GZRS or RAGZRS and vice versa. Defaults to LRS. | `string` | `"LRS"` | no |
| <a name="input_storage_account_tier"></a> [storage\_account\_tier](#input\_storage\_account\_tier) | (Optional) Defines the Tier to use for this storage account. Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid. Changing this forces a new resource to be created. Defaults to Standard | `string` | `"Standard"` | no |
| <a name="input_storage_blob_name"></a> [storage\_blob\_name](#input\_storage\_blob\_name) | (Optional) The name of the storage blob. Must be unique within the storage container the blob is located. Changing this forces a new resource to be created. Required if requires\_storage\_blob is set to True. | `string` | `"changeme"` | no |
| <a name="input_storage_blob_source"></a> [storage\_blob\_source](#input\_storage\_blob\_source) | (Optional) An absolute path to a file on the local system. This field cannot be specified for Append blobs and cannot be specified if source\_content or source\_uri is specified. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_storage_blob_type"></a> [storage\_blob\_type](#input\_storage\_blob\_type) | (Optional) The type of the storage blob to be created. Possible values are Append, Block or Page. Changing this forces a new resource to be created. Required if requires\_storage\_blob is set to True. | `string` | `"Append"` | no |
| <a name="input_storage_container_access_type"></a> [storage\_container\_access\_type](#input\_storage\_container\_access\_type) | (Optional) The Access Level configured for this Container. Possible values are blob, container or private. Defaults to private. | `string` | `"private"` | no |
| <a name="input_storage_container_name"></a> [storage\_container\_name](#input\_storage\_container\_name) | (Required) The name of the Container which should be created within the Storage Account. Changing this forces a new resource to be created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_client_certificate"></a> [client\_certificate](#output\_client\_certificate) | n/a |
| <a name="output_kube_config"></a> [kube\_config](#output\_kube\_config) | n/a |
<!-- END_TF_DOCS -->