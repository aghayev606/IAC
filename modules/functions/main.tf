resource "azurerm_linux_function_app" "function" {
  service_plan_id = azurerm_service_plan.function.id
  location            = var.location
  name                = var.function_app_name
  resource_group_name = var.resource_group_name
  storage_account_name = var.storage_account_name
  storage_account_access_key = data.azurerm_key_vault_secret.accesskey.value
  app_settings = {
    FUNCTIONS_WORKER_RUNTIME = "node"
    APPINSIGHTS_INSTRUMENTATIONKEY = data.azurerm_key_vault_secret.appinsight.value
  }
  site_config {}
}
resource "azurerm_service_plan" "function" {
  name                = var.function_app_name
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = "Linux"
  sku_name            = "Y1"
}

data "azurerm_key_vault_secret" "accesskey" {
  key_vault_id = var.keyvault_id
  name         = "storage-account-access-key"
}

data "azurerm_key_vault_secret" "appinsight" {
  key_vault_id = var.keyvault_id
  name         = "app-insight-instrumentation-key"
}