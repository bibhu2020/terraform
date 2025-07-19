data "azurerm_virtual_network" "existing" {
  count               = var.use_existing_vnet ? 1 : 0
  name                = var.vnet_name
  resource_group_name = var.resource_group_name
}

# Create a new Virtual Network if it does not exist
resource "azurerm_virtual_network" "new" {
  count               = var.use_existing_vnet ? 0 : 1
  name                = var.vnet_name
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.address_space
}
