output "mysql_server_id" {
  description = "The ID of the MySQL Flexible Server."
  value       = azurerm_mysql_flexible_server.example.id
}

output "fqdn" {
  description = "The fully qualified domain name of the MySQL Flexible Server."
  value       = azurerm_mysql_flexible_server.example.fqdn
}

