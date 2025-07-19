resource "azurerm_linux_web_app" "example" {
  count               = var.enable == true ? 1 : 0
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name
  service_plan_id     = var.app_service_plan_id
  tags                = var.tags

  app_settings        = var.app_settings
  public_network_access_enabled = var.public_network_access_enabled
  virtual_network_subnet_id = var.virtual_network_subnet_id
  
  site_config {
    always_on = true
    health_check_path = "/"
  }
}