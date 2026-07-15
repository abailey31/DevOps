module "kubernetes" {
  source = "../Reusable_Module"

  ## Required ##
  resource_group_name     = "example-resources"
  resource_group_location = "East US"
  cluster_name            = "example-aks1"
  node_pool_name          = "default"
  env_tag                 = "Example"
  storage_account_name    = "example"
  storage_container_name  = "storage"
  ## /Required ##

  ## Optional ##
  #node_pool_node_count          = "1"
  #identity_type                 = "SystemAssigned"
  #storage_account_tier          = "Standard"
  #storage_account_repl_type     = "LRS"
  #storage_container_access_type = "private"
  #cluster_dns_prefix            = ""
  #requires_storage_blob = false
  #storage_blob_name     = ""
  #storage_blob_type     = ""
  #storage_blob_source   = ""
  ## /Optional ##
}
