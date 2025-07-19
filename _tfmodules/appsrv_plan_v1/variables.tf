variable "name" {
  description = "The name of the App Service Plan"
  type        = string
}

variable "location" {
  description = "The Azure region where the App Service Plan will be created"
  type        = string
}

variable "rg_name" {
  description = "The name of the resource group where the App Service Plan will be created"
  type        = string
}

variable "sku_name" {
  description = "The sku_name of the App Service Plan"
  type        = string
  default     = "P1v2"  # Default size if not provided
}

variable "os_type" {
  description = "The kind of OS (Windows or Linux or WindowsContainer)"
  type        = string
  default     = "Linux"  # Default to Linux if not specified
}
variable "enable" { 
    type = bool
    default = true
}
variable "tags" {}
