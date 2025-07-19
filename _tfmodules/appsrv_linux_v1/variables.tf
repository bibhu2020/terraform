variable "name" {
  description = "The name of the App Service "
  type        = string
}

variable "location" {
  description = "The Azure region where the App Service  will be created"
  type        = string
}

variable "rg_name" {
  description = "The name of the resource group where the App Service  will be created"
  type        = string
}

variable "app_service_plan_id" {}
variable "health_check_path" { default = "/" }
variable "public_network_access_enabled" { default = true }
variable "virtual_network_subnet_id" { default     = null}

variable "app_settings" { 
    type = map(string) 
    default = {"SOME_KEY1" = "SOME_VALUE1" , "SOME_KEY2" = "SOME_VALUE2"}
}


variable "enable" { 
    type = bool
    default = true
}
variable "tags" {}
