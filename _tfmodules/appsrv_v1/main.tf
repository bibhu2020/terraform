resource "azurerm_app_service" "example" {
  count               = var.enable == true ? 1 : 0
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name
  app_service_plan_id = var.app_service_plan_id

  app_settings        = var.environment_variable_list
  tags                = var.tags
}
