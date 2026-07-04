environment = "staging"

address_space           = ["10.5.0.0/24"]
subnet_address_prefixes = ["10.5.0.0/28"]

TF_Backend_Key = staging.tfstate

deploy_database = false
database_sku = "Basic"

location          = "eastus2"
database_location = "centralus"