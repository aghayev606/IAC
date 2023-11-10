module "storage_account" {
  source                   = "../modules/sa"
  container_name           = var.container_name
  location                 = var.location
  resource_group_name      = module.rg.resource_group_name
  storage_account_name     = var.resource_name
  keyvault_id = module.keyvault.keyvault_id
}
