resource "azurerm_service_plan" "example" {
  count               = var.enable == true ? 1 : 0
  name                = var.name
  resource_group_name = var.rg_name
  location            = var.location
  os_type             = var.os_type
  sku_name            = var.sku_name 
  tags                = var.tags
}

