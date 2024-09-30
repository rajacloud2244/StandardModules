variable "cognitive_account_name" {
  description = "Name of the Cognitive Account"
  type        = string
}

variable "location" {
  description = "Azure region where the resource will be created"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}
variable "sku_name" {
  type        = string
}

variable "kind" {
  description = "The kind of Cognitive service to create"
  type        = string
}
