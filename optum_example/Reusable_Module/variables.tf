variable "resource_group_name" {
  type        = string
  description = "(Required) The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
}

variable "resource_group_location" {
  type        = string
  description = "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
}

variable "cluster_name" {
  type        = string
  description = "(Required) The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created."
}

variable "cluster_dns_prefix" {
  type        = string
  description = "(Optional) DNS prefix specified when creating the managed cluster. Possible values must begin and end with a letter or number, contain only letters, numbers, and hyphens and be between 1 and 54 characters in length. Changing this forces a new resource to be created."
  default     = null
}

variable "node_pool_name" {
  type        = string
  description = "(Required) The name which should be used for the default Kubernetes Node Pool."
}

variable "node_pool_node_count" {
  type        = number
  description = "(Optional) The number of nodes which should exist in this Node Pool. Defaults based on environment."
  default     = 1
}

variable "node_pool_vm_size" {
  type        = string
  description = "(Optional) The size of the Virtual Machine, such as Standard_DS2_v2. temporary_name_for_rotation must be specified when attempting a resize."
  default     = "Standard_D2_v2"
}

variable "identity_type" {
  type        = string
  description = "(Optional) Specifies the type of Managed Service Identity that should be configured on this Kubernetes Cluster. Possible values are SystemAssigned or UserAssigned. Defaults to SystemAssigned."
  default     = "SystemAssigned"
}

variable "env_tag" {
  type        = string
  description = "(Required) Specifies the environment for this cluster."
}

variable "storage_account_name" {
  type        = string
  description = "(Required) Specifies the name of the storage account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created. This must be unique across the entire Azure service, not just within the resource group."
}

variable "storage_account_tier" {
  type        = string
  description = "(Optional) Defines the Tier to use for this storage account. Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid. Changing this forces a new resource to be created. Defaults to Standard"
  default     = "Standard"
}

variable "storage_account_repl_type" {
  type        = string
  description = "(Optional) Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS. Changing this forces a new resource to be created when types LRS, GRS and RAGRS are changed to ZRS, GZRS or RAGZRS and vice versa. Defaults to LRS."
  default     = "LRS"
}

variable "storage_container_name" {
  type        = string
  description = "(Required) The name of the Container which should be created within the Storage Account. Changing this forces a new resource to be created."
}

variable "storage_container_access_type" {
  type        = string
  description = "(Optional) The Access Level configured for this Container. Possible values are blob, container or private. Defaults to private."
  default     = "private"
}

variable "requires_storage_blob" {
  type        = bool
  description = "(Optional) Flags whether or not to create a storage blob for this cluster. Defaults to false."
  default     = false
}

variable "storage_blob_name" {
  type        = string
  description = "(Optional) The name of the storage blob. Must be unique within the storage container the blob is located. Changing this forces a new resource to be created. Required if requires_storage_blob is set to True."
  default     = "changeme"
}

variable "storage_blob_type" {
  type        = string
  description = "(Optional) The type of the storage blob to be created. Possible values are Append, Block or Page. Changing this forces a new resource to be created. Required if requires_storage_blob is set to True."
  default     = "Append"
}

variable "storage_blob_source" {
  type        = string
  description = "(Optional) An absolute path to a file on the local system. This field cannot be specified for Append blobs and cannot be specified if source_content or source_uri is specified. Changing this forces a new resource to be created."
  default     = null
}
