output "resource_group_name" {
   value = azurerm_resource_group.database.name
   description = "The name of the resource group for the database."
}

# output "server_name" {
#    value = azurerm_mssql_server.main.name
#    description = "The name of the SQL server."
# }

# output "database_name" {
#    value = azurerm_mssql_database.main.name
#    description = "The name of the SQL database."
# }

# output "connection_string" {
#    value = "Server=${azurerm_mssql_server.main.fully_qualified_domain_name};Database=${azurerm_mssql_database.main.name};User ID=${var.admin_username};Password=${var.admin_password};"
#    description = "The connection string for the SQL database."
#    sensitive = true
# }

