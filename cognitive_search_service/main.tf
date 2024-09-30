resource "azurerm_search_service" "searchservice" {
  name                = var.search_service_name
  resource_group_name = var.resource_group_name
  location            = var.location

  sku = var.sku

  local_authentication_enabled = var.local_authentication_enabled
  authentication_failure_mode  = var.authentication_failure_mode
  
  allowed_ips = var.allowed_ips

  customer_managed_key_enforcement_enabled = var.customer_managed_key_enforcement_enabled
  
  hosting_mode = var.hosting_mode

  partition_count = var.partition_count
  replica_count   = var.replica_count

  semantic_search_sku = var.semantic_search_sku

  public_network_access_enabled = var.public_network_access_enabled


  tags = var.tags
}