variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region where the resources will be created"
  type        = string
}

variable "app_insight_name" {
  description = "Name of App Insights"
  type = string
}

variable "keyvault_id" {
  description = "ID of Azure Keyvault"
  type = string
}