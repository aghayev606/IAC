variable "storage_account_name" {
  description = "Name of the Azure Storage Account"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region where the resources will be created"
  type        = string
}

variable "account_tier" {
  description = "Storage account tier"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Storage account replication type"
  type        = string
  default     = "LRS"
}
variable "container_name" {
  description = "Name of the container"
}
variable "keyvault_id" {
  description = "ID of Azure Keyvault"
  type = string
}