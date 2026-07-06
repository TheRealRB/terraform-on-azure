variable "project_name" {
    description = "The name of the project."
    type        = string
    default = "Terraform Azure DevOps Demo"
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

variable "app_service_sku" {
    description = "The SKU/tier for the App Service Plan."
    type        = string
    default     = "F1"
}

variable "database_connection_string" {
    description = "The connection string for the database."
    type        = string
    sensitive   = true
    default = ""
}

variable "tags" {
    description = "Tags to apply to resources"
    type        = map(string)
    default     = {}
}



