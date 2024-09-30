resource "azurerm_virtual_network" "vn" {
  name                = var.virtual_network_name
  location            = var.location
  resource_group_name = var.resource_group_name 
  address_space       = var.address_space
  dns_servers         = var.dns_servers

  dynamic "subnet" {
    for_each = var.subnets
    content {
      name             = subnet.value.name
      address_prefix   = subnet.value.address_prefixes[0]  # Use only the first prefix
    }
  }

  tags = var.tags
}