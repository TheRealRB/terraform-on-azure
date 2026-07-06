variable "project_name" {
    description = "The name of the project."
    type        = string
    default = "Terraform Demo Project"
}

variable "environment" {
    description = "The environment for the deployment (e.g., dev, staging, prod)."
    type        = string
    default = "dev"

    validation {
      condition = contains(["dev", "staging", "prod"], lower(var.environment))
      error_message = "The environment must be one of: dev, staging, prod."
    }
}

variable "location" {
    description = "The location/region for the resources."
    type        = string
    default = "eastus2"
}

variable "deploy_database" {
  description = "Controls whether Azure SQL resources are deployed."
  type        = bool
  default     = false
}

variable "admin_username" {
    description = "The admin username for the database."
    type        = string
    default     = "sqladminuser"
}

variable "admin_password" {
    description = "The admin password for the database."
    type        = string
    sensitive   = true
}

variable "database_sku" {
    description = "The SKU/tier for the database."
    type        = string
    default     = "Basic"
}

variable "tags" {
    description = "Tags to apply to resources"
    type        = map(string)
    default     = {}
}