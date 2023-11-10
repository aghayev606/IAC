module "main" {
  source = "./resources"
  container_name = "logs"
  location       = "westeurope"
  resource_name  = "testexercise"
}