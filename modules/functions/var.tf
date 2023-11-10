variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region where the resources will be created"
  type        = string
}

variable "function_app_name" {
  description = "Name of Azure Functions"
  type = string
}

variable "storage_account_name" {
  description = "Name of Storage Account that is used for Azure Function"
  type = string
}

variable "keyvault_id" {
  description = "ID of Azure Keyvault"
  type = string
}