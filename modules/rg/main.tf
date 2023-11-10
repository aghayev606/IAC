resource "azurerm_resource_group" "main" {
  location = var.location
  name     = var.name
}
output "resource_group_name" {
  value = azurerm_resource_group.main.name
}