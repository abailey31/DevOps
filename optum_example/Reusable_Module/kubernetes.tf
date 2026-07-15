resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_kubernetes_cluster" "example" {
  name                = var.cluster_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  dns_prefix          = var.cluster_dns_prefix

  default_node_pool {
    name       = var.node_pool_name
    node_count = var.node_pool_node_count
    vm_size    = var.node_pool_vm_size
  }

  identity {
    type = var.identity_type
  }

  tags = {
    Environment = var.env_tag
  }
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.example.kube_config[0].client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.example.kube_config_raw

  sensitive = true
}
