variable "link_name" {
  description = "The name for the virtual network link."
  type        = string
}

variable "resource_group_name" {
  description = "The resource group name where the DNS zone exists."
  type        = string
}

variable "private_dns_zone_name" {
  description = "The name of the Private DNS Zone to link."
  type        = string
}

variable "virtual_network_id" {
  description = "The ID of the virtual network to link with."
  type        = string
}

variable "registration_enabled" {
  description = "Whether auto-registration of virtual network records is enabled."
  type        = bool
  default     = false
}
