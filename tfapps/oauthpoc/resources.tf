##### Create Resource Group
module "rg_app" {
  source = "../../_tfmodules/rg_v1"

  name     = format("%s-rg", local.prefix)
  location = local.location
  tags     = local.tags

}

##### Create virtual network
module "vnet_app" {
  source = "../../_tfmodules/vnet_v1"
  enable = true

  name              = format("%s-vnet", local.prefix)
  location          = local.location
  tags              = local.tags
  rg                = module.rg_app.name
  vnet_address_cidr = local.address_cidr
  subnets           = local.subnets

  depends_on = [
    module.rg_app
  ]
}

##### Create an app service plan
module "appsrvplan1" {
  source = "../../_tfmodules/appsrv_plan_v1"

  rg_name  = module.rg_app.name
  location = local.location
  name     = format("%s-appplan1", local.prefix)
  tags     = local.tags

  depends_on = [
    module.rg_app
  ]

}

##### Create an app service
module "appsrv2" {
  source = "../../_tfmodules/appsrv_linux_v1"

  rg_name                       = module.rg_app.name
  location                      = local.location
  name                          = format("%s-app2", local.prefix)
  tags                          = local.tags
  app_service_plan_id           = module.appsrvplan1.app_service_plan_id
  health_check_path             = "/"
  public_network_access_enabled = false
  #virtual_network_subnet_id = module.vnet_app.subnets["subnet-default"].id


  depends_on = [
    module.appsrvplan1
  ]
}

