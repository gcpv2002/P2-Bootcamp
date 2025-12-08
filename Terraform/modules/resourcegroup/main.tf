resource "azurerm_resource_group" "my-rg" {
  name     = var.rg-name
  location = var.rg-location
}