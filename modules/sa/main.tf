resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}
resource "azurerm_storage_container" "logs" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "container"
}
output "storage_account_name" {
  value = azurerm_storage_account.storage_account.name
}
resource "azurerm_key_vault_secret" "accesskey" {
  key_vault_id = var.keyvault_id
  name         = "storage-account-access-key"
  value        = azurerm_storage_account.storage_account.primary_access_key
}