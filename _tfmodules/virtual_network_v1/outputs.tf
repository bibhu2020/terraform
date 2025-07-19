output "vnet_name" {
  value = var.use_existing_vnet ? data.azurerm_virtual_network.existing[0].name : azurerm_virtual_network.new[0].name
}

output "vnet_id" {
  value = var.use_existing_vnet ? data.azurerm_virtual_network.existing[0].id : azurerm_virtual_network.new[0].id
}

output "location" {
  value = var.use_existing_vnet ? data.azurerm_virtual_network.existing[0].location : azurerm_virtual_network.new[0].location
}

output "resource_group_name" {
  value = var.use_existing_vnet ? data.azurerm_virtual_network.existing[0].resource_group_name : azurerm_virtual_network.new[0].resource_group_name
}
