resource "azurerm_storage_account" "example" {
  count                    = var.requires_storage_blob ? 1 : 0
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_repl_type
}

resource "azurerm_storage_container" "example" {
  count                 = var.requires_storage_blob ? 1 : 0
  name                  = var.storage_container_name
  storage_account_id    = azurerm_storage_account.example.id
  container_access_type = var.storage_container_access_type
}

resource "azurerm_storage_blob" "example" {
  count                = var.requires_storage_blob ? 1 : 0
  name                 = var.storage_blob_name
  storage_container_id = azurerm_storage_container.example.id
  type                 = var.storage_blob_type
  source               = var.storage_blob_source
}
