resource "azurerm_storage_account" "example" {
  name                              = var.storage_account_name
  resource_group_name               = var.resource_group_name
  location                          = var.location
  account_tier                      = var.account_tier
  account_replication_type          = var.account_replication_type
  account_kind                      = var.account_kind
  access_tier                       = var.access_tier
  min_tls_version                   = var.min_tls_version
  https_traffic_only_enabled         = var.https_traffic_only_enabled
  allow_nested_items_to_be_public    = var.allow_nested_items_to_be_public
  shared_access_key_enabled          = var.shared_access_key_enabled
  is_hns_enabled                     = var.is_hns_enabled
  edge_zone = var.edge_zone
  public_network_access_enabled =var.public_network_access_enabled
  default_to_oauth_authentication = var.default_to_oauth_authentication
  nfsv3_enabled = var.nfsv3_enabled

  blob_properties {
    delete_retention_policy {
      days = var.blob_delete_retention_days  # Number of days for retention
      permanent_delete_enabled = var.permanent_delete_enabled  # Enable permanent deletion
    }

    versioning_enabled = var.versioning_enabled  # Enable versioning
    change_feed_enabled = var.change_feed_enabled  # Enable change feed
  }

  queue_properties {
    cors_rule {
      allowed_headers = var.queue_cors_allowed_headers
      allowed_methods = var.queue_cors_allowed_methods
      allowed_origins = var.queue_cors_allowed_origins
      exposed_headers = var.queue_cors_exposed_headers
      max_age_in_seconds = var.queue_cors_max_age
    }

    logging {
      delete = true
      read = true
      write = true
      version = "1.0"  # Specify version of storage analytics
      retention_policy_days = var.queue_logging_retention_days
    }

    minute_metrics {
      enabled = true
      version = "1.0"
      include_apis = true
      retention_policy_days = var.queue_minute_metrics_retention_days
    }

    hour_metrics {
      enabled = true
      version = "1.0"
      include_apis = true
      retention_policy_days = var.queue_hour_metrics_retention_days
    }
  }

  routing {
    publish_internet_endpoints = var.routing.publish_internet_endpoints
    publish_microsoft_endpoints = var.routing.publish_microsoft_endpoints
    choice = var.routing.choice
  }

  static_website {
    index_document = var.static_website.index_document
    error_404_document = var.static_website.error_404_document
  }

  tags = var.tags
}
