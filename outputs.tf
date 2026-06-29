# Root outputs.tf to expose useful outputs from the modules
output "resource_group_name" {
  description = "The name of the resource group."
  value       = module.compute.resource_group_name
}

output "virtual_network_id" {
  description = "The ID of the virtual network."
  value       = module.compute.virtual_network_id
}

