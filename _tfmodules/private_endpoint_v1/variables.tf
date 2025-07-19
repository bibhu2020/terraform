variable "private_endpoint_name" {
  description = "The name of the private endpoint."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The location of the private endpoint."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet where the private endpoint will be placed."
  type        = string
}

variable "service_connection_name" {
  description = "The name of the private service connection."
  type        = string
}

variable "is_manual_connection" {
  description = "Whether the private connection is manual or automatic."
  type        = bool
}

variable "private_connection_resource_id" {
  description = "The resource ID of the resource to be connected via private endpoint."
  type        = string
}

variable "subresource_names" {
  description = "The subresource names (e.g., 'blob' for Azure Blob storage)."
  type        = list(string)
}
