variable "use_existing_vnet" {
  description = "Set to true if using an existing VNet, false to create a new one"
  type        = bool
}

variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region (required only when creating a new VNet)"
  type        = string
  default     = null
}

variable "address_space" {
  description = "Address space for the Virtual Network (required only when creating a new VNet)"
  type        = list(string)
  default     = []
}

