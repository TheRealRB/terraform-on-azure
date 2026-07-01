output "resource_group_name" {
   value = azurerm_resource_group.webapp.name
   description = "The name of the resource group for the web application."
}

output "service_plan_name" {
   value = azurerm_service_plan.main.name
   description = "The name of the app service plan for the web application."
}

# output "web_app_name" {
#    value = azurerm_linux_web_app.main.name
#    description = "The name of the web application."
# }

# output "web_app_url" {
#    value = "https://{azurerm_linux_web_app.main.default_site_hostname}"
#    description = "The default URL of the web application."
# }

