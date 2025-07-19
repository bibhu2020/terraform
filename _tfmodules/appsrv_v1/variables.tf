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

variable "environment_variable_list" { 
    type = map(string) 
    default = {"SOME_KEY1" = "SOME_VALUE1" , "SOME_KEY2" = "SOME_VALUE2"}
}


variable "enable" { 
    type = bool
    default = true
}
variable "tags" {}
