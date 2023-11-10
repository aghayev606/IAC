module "appinsights" {
  source = "../modules/appinsights"
  app_insight_name    = var.resource_name
  keyvault_id         = module.keyvault.keyvault_id
  location            = var.location
  resource_group_name = module.rg.resource_group_name
}