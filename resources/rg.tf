module "rg" {
  source = "../modules/rg"
  location = var.location
  name     = var.resource_name
}