variable "app" {
  type        = string
  description = "Name of the application."
}
variable "env" {
  type        = string
  description = "Name of the environment."
  validation {
    condition     = length(var.env) == 3
    error_message = "The value of 'env' must be of 3 characters."
  }
}
variable "subscription_id" {
  description = "Azure subscripttion id."
  type        = string
}
variable "tenant_id" {
  description = "Azure tenant id."
  type        = string
}
variable "location" {
  description = "Region in where the resources will be created."
  type        = string
}
variable "owner" {
  description = "owner of the project."
  type        = string
}
variable "co-owner" {
  description = "co-owner of the project."
  type        = string
}
variable "workitem" {
  description = "ADO User Story Path or Number."
  type        = string
}
# variable "password" {
#   description = "VM administrator password."
#   type        = string
# }
