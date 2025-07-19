variable "server_name" {
  description = "The name of the MySQL Flexible Server."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the MySQL server will be deployed."
  type        = string
}

variable "location" {
  description = "The Azure region for the deployment."
  type        = string
}

variable "administrator_login" {
  description = "The administrator login name for the MySQL Flexible Server."
  type        = string
}

variable "administrator_password" {
  description = "The administrator password for the MySQL Flexible Server."
  type        = string
  sensitive   = true
}

variable "backup_retention_days" {
  description = "The number of days to retain backups."
  type        = number
  default     = 7
}

variable "delegated_subnet_id" {
  description = "The resource ID of the subnet where the MySQL server will be deployed."
  type        = string
}

variable "private_dns_zone_id" {
  description = "The resource ID of the private DNS zone to associate with the server."
  type        = string
}

variable "sku_name" {
  description = "The SKU name for the MySQL Flexible Server (e.g., GP_Standard_D2ds_v4)."
  type        = string
}

variable "enable_high_availability" {
  description = "Enable high availability (true for production, false otherwise)."
  type        = bool
  default     = false
}

