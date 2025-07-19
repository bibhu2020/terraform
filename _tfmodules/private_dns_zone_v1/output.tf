output "private_dns_zone_id" {
  value = var.use_existing ? data.azurerm_private_dns_zone.existing[0].id : azurerm_private_dns_zone.this[0].id
}

output "private_dns_zone_name" {
  value = var.use_existing ? data.azurerm_private_dns_zone.existing[0].name : azurerm_private_dns_zone.this[0].name
}
