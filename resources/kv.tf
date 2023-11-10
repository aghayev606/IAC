module "keyvault" {
  source              = "../modules/kv"
  keyvault_name       = var.resource_name
  resource_group_name = module.rg.resource_group_name
  location            = var.location
  sku_name            = var.sku_name
  enabled_for_disk_encryption = var.enabled_for_disk_encryption
}