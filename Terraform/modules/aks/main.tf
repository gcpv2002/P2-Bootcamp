resource "azurerm_kubernetes_cluster" "my-aks" {
  name                = var.aks-name
  location            = var.aks-location
  resource_group_name = var.aks-rg
  dns_prefix = var.aks-dns

  default_node_pool {
    name       = var.nodepool-name
    enable_auto_scaling = true
    min_count = var.min-count
    max_count = var.max-count
    vm_size    = var.node-vm-size

  }

  identity {
    type = "SystemAssigned"
  }
}