variable "use_existing" {
  description = "Set to true to use an existing Private DNS Zone; false to create a new one."
  type        = bool
}

variable "zone_name" {
  description = "The name of the Private DNS Zone (e.g., privatelink.blob.core.windows.net)."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the Private DNS Zone exists or will be created."
  type        = string
}
