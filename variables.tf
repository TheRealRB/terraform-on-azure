variable "team_name" {
  description = "The name of the team"
  type        = string
  default     = "devops-team"
}

variable "project_name" {
  description = "The name of the project."
  type        = string
  default     = "terraform-demo2"
}

variable "location" {
  description = "the azure region where resources will be created"
  type        = string
  default     = "eastus2"
}

variable "environment" {
  description = "The environment for the resources - dev, staging, prod"
  type        = string
  default     = "dev"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "rg-terraform-demo"
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default = {
  }
}

variable "virtual_network_name" {
  description = "The name of the virtual network"
  type        = string
  default     = "vnet-terraform-demo"
}

variable "address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/24"]
}

variable "subnet_address_prefixes" {
  description = "The address prefix for the subnet"
  type        = list(string)
  default     = ["10.0.0.0/28", "10.0.1.0/28"]
}

variable "vm_count" {
  description = "The number of virtual machines to create"
  type        = number
  default     = 1
}

variable "vm_size" {
  description = "The size of the virtual machines"
  type        = string
  default     = "Standard_B1s"

}

# Database configuration


variable "database_password" {
    description = "The admin password for the database."
    type        = string
    sensitive   = true
}

variable "database_sku" {
    description = "The SKU/tier for the database."
    type        = string
    default     = "Basic"
}


#Web App configuration
variable "app_service_sku" {
    description = "The SKU/tier for the App Service Plan."
    type        = string
    default     = "B1"
}

