output "dns_link_id" {
  description = "The ID of the private DNS zone virtual network link."
  value       = azurerm_private_dns_zone_virtual_network_link.this.id
}
