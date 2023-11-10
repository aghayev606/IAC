variable "container_name" {
  description = "Name of the container"
}
variable "resource_name" {
  description = "Static name for resources"
  type = string
}
variable "location" {
  description = "Azure region where the resources will be created"
  type        = string
}
variable "sku_name" {
  description = "SKU name of the Azure Key Vault"
  type        = string
  default     = "standard"
}
variable "enabled_for_disk_encryption" {
  description = "Specifies whether Azure Disk Encryption is enabled"
  type        = bool
  default     = false
}