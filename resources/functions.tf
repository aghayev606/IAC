module "funtions" {
  source = "../modules/functions"
  function_app_name          = var.resource_name
  keyvault_id                = module.keyvault.keyvault_id
  location                   = var.location
  resource_group_name        = module.rg.resource_group_name
  storage_account_name       = module.storage_account.storage_account_name
}