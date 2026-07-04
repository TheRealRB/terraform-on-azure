output "resource_group_name" {
   value = azurerm_resource_group.database.name
   description = "The name of the resource group for the database."
}

   output "database_name" {
  value = try(azurerm_mssql_database.main[0].name, null)
}

output "server_name" {
  value = try(azurerm_mssql_server.main[0].name, null)
}

output "connection_string" {
   value = "Server=${azurerm_mssql_server.main[0].fully_qualified_domain_name};Database=${azurerm_mssql_database.main[0].name};User ID=${var.admin_username};Password=${var.admin_password};"
   description = "The connection string for the SQL database."
   sensitive = true
}

