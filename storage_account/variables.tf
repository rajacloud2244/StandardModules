variable "storage_account_name" {
  description = "The name of the storage account."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure region where the storage account will be created."
  type        = string
}

variable "account_tier" {
  description = "The tier of the storage account."
  type        = string
}

variable "account_replication_type" {
  description = "The replication type of the storage account."
  type        = string
}

variable "account_kind" {
  description = "The kind of storage account."
  type        = string
}

variable "access_tier" {
  description = "The access tier for the storage account."
  type        = string
}

variable "min_tls_version" {
  description = "Minimum TLS version for the storage account."
  type        = string
}

variable "https_traffic_only_enabled" {
  description = "Should only HTTPS traffic be allowed?"
  type        = bool
}

variable "allow_nested_items_to_be_public" {
  description = "Should nested items be allowed to be public?"
  type        = bool
}

variable "shared_access_key_enabled" {
  description = "Should shared access key be enabled?"
  type        = bool
}

variable "is_hns_enabled" {
  description = "Is hierarchical namespace enabled?"
  type        = bool
}

variable "ross_tenant_replication_enabled" {
  description = "Is cross-tenant replication enabled?"
  type        = bool
}

variable "edge_zone" {
  description = "The edge zone to use for the storage account."
  type        = string
  default     = null  # Optional
}

variable "public_network_access_enabled" {
  description = "Is public network access enabled?"
  type        = bool
}

variable "default_to_oauth_authentication" {
  description = "Should OAuth authentication be used by default?"
  type        = bool
}

variable "nfsv3_enabled" {
  description = "Is NFS v3 enabled?"
  type        = bool
}

variable "customer_managed_key" {
  description = "The customer managed key for the storage account."
  type        = string
  default     = null  # Optional
}

variable "blob_delete_retention_days" {
  description = "Number of days for blob delete retention."
  type        = number
  default     = 7  # Default value
}

variable "permanent_delete_enabled" {
  description = "Enable permanent deletion of soft deleted blobs."
  type        = bool
  default     = false
}

variable "versioning_enabled" {
  description = "Is versioning enabled for the storage account?"
  type        = bool
  default     = false
}

variable "change_feed_enabled" {
  description = "Is change feed enabled for the storage account?"
  type        = bool
  default     = false
}

variable "queue_cors_allowed_headers" {
  description = "Allowed headers for CORS in queue properties."
  type        = list(string)
}

variable "queue_cors_allowed_methods" {
  description = "Allowed methods for CORS in queue properties."
  type        = list(string)
}

variable "queue_cors_allowed_origins" {
  description = "Allowed origins for CORS in queue properties."
  type        = list(string)
}

variable "queue_cors_exposed_headers" {
  description = "Exposed headers for CORS in queue properties."
  type        = list(string)
}

variable "queue_cors_max_age" {
  description = "Max age in seconds for CORS in queue properties."
  type        = number
}

variable "queue_logging_retention_days" {
  description = "Retention days for queue logging."
  type        = number
}

variable "queue_minute_metrics_retention_days" {
  description = "Retention days for queue minute metrics."
  type        = number
}

variable "queue_hour_metrics_retention_days" {
  description = "Retention days for queue hour metrics."
  type        = number
}

variable "routing" {
  description = "Configuration for routing options."
  type = object({
    publish_internet_endpoints   = bool
    publish_microsoft_endpoints   = bool
    choice                        = string
  })
}

variable "static_website" {
  description = "Static website configuration."
  type = object({
    index_document      = string
    error_404_document  = string
  })
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
}
