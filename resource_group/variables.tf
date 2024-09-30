variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region for all resources"
  type        = string
}

variable "managed_by" {
  description = "The entity responsible for managing the resource"
  type        = string
  default     = ""  # Corrected to an empty string
}

variable "tags" {
  description = "A map of tags to apply to the resource"
  type        = map(string)
  default     = {}  # Optional: can be set to an empty map
}
