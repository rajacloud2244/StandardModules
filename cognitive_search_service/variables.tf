variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
  default     = "East US"  # Change as needed
}

variable "search_service_name" {
  description = "The name of the Azure Search Service."
  type        = string
}

variable "sku" {
  description = "The SKU for the Search Service."
  type        = string
  default     = "standard"
}

variable "local_authentication_enabled" {
  description = "Specifies whether local authentication is enabled."
  type        = bool
  default     = true
}

variable "authentication_failure_mode" {
  description = "The authentication failure mode."
  type        = string
  default     = "http403"
}

variable "allowed_ips" {
  description = "A list of allowed IP ranges for access."
  type        = list(string)
  default     = ["0.0.0.0/0"]  # Change to your required IP ranges
}

variable "customer_managed_key_enforcement_enabled" {
  description = "Specifies whether customer-managed key enforcement is enabled."
  type        = bool
  default     = false
}

variable "hosting_mode" {
  description = "The hosting mode for the Search Service."
  type        = string
  default     = "default"  # Options: "default" or "highDensity"
}

variable "partition_count" {
  description = "The number of partitions for the Search Service."
  type        = number
  default     = 1
}

variable "replica_count" {
  description = "The number of replicas for the Search Service."
  type        = number
  default     = 1
}

variable "semantic_search_sku" {
  description = "The SKU for the Semantic Search feature."
  type        = string
  default     = "standard"
}

variable "public_network_access_enabled" {
  description = "Specifies whether public network access is enabled."
  type        = bool
  default     = true
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = {
    Environment = "Development"
    Team        = "SearchTeam"
  }
}

variable "SystemAssigned" {
  type        = string
  default     = true
}

