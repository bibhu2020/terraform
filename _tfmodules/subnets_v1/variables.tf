variable "vnet_name" {
  description = "Virtual Network name"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
}

variable "address_prefixes" {
  description = "List of address prefixes for the subnet"
  type        = list(string)
}

variable "delegation" {
  description = "Optional delegation block for the subnet"
  type        = object({
    name               = string
    service_delegation = object({
      name    = string
      actions = list(string)
    })
  })
  default = null
}

variable "service_endpoints" {
  description = "Optional list of service endpoints"
  type        = list(string)
  default     = []
}

