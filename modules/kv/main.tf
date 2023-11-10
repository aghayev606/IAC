resource "azurerm_key_vault" "keyvault" {
  name                        = var.keyvault_name
  resource_group_name         = var.resource_group_name
  location                    = var.location
  sku_name                    = var.sku_name
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  enabled_for_disk_encryption = var.enabled_for_disk_encryption
}

resource "azurerm_key_vault_access_policy" "keyvault" {
  key_vault_id = azurerm_key_vault.keyvault.id
  tenant_id    = data.azurerm_client_config.current.tenant_id
  object_id    = data.azurerm_client_config.current.object_id
  key_permissions = [
    "Get","Create","List","Delete","Import"
  ]
  secret_permissions = [
    "Get","Set","List","Delete"
  ]
}

output "keyvault_id" {
  value = azurerm_key_vault.keyvault.id
}
data "azurerm_client_config" "current" {}