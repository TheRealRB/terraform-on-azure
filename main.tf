# Configure Azure Provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

backend "azurerm" {}
}

provider "azurerm" {
  subscription_id = var.subscription_id
  features {}
  use_oidc = true
}

module "compute" {
  source                  = "./modules/compute"
  project_name            = var.project_name
  team_name               = var.team_name
  environment             = var.environment
  location                = var.location
  deploy_vm                = var.deploy_vm
  vm_count                = var.vm_count
  vm_size                 = var.vm_size
  address_space           = var.address_space
  subnet_address_prefixes = var.subnet_address_prefixes
  admin_username          = var.admin_username
  ssh_public_key          = var.ssh_public_key
  tags                    = var.tags
}

module "database" {
  source                  = "./modules/database"

  project_name            = var.project_name
  environment             = var.environment
  location                = var.database_location
  deploy_database         = var.deploy_database
  admin_password          = var.database_password
  admin_username          = var.admin_username
  database_sku            = var.database_sku
  tags                    = var.tags
}

variable "database_admin_username" {
  description = "SQL database admin username."
  type        = string
  default     = "sqladminuser"
}

module "web_app" {
  source                  = "./modules/web-app"
  project_name            = var.project_name
  environment             = var.environment
  location                = var.location
#  app_service_sku = var.app_service_sku
#  database_connection_string = module.database.connection_string
  tags                    = var.tags
}




