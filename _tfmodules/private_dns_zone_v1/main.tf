# If use_existing is true, fetch the existing Private DNS Zone.
data "azurerm_private_dns_zone" "existing" {
  count               = var.use_existing ? 1 : 0
  name                = var.zone_name
  resource_group_name = var.resource_group_name
}

# If use_existing is false, create a new Private DNS Zone.
resource "azurerm_private_dns_zone" "this" {
  count               = var.use_existing ? 0 : 1
  name                = var.zone_name
  resource_group_name = var.resource_group_name
}
