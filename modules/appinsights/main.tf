resource "azurerm_application_insights" "function" {
  application_type    = "web"
  location            = var.location
  name                = var.app_insight_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_key_vault_secret" "appinsight" {
  key_vault_id = var.keyvault_id
  name         = "app-insight-instrumentation-key"
  value        = azurerm_application_insights.function.instrumentation_key
}