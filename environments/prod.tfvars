location                = "eastus2"
project_name            = "terraform-demo3"
environment             = "prod"
subscription_id = "2860e008-3f26-4ac1-ad84-d08c05985dbd"
address_space           = ["10.5.0.0/24"]
subnet_address_prefixes = ["10.5.0.0/28"]

TF_Backend_Key = prod.tfstate

deploy_database = false
database_sku = "Basic"

location          = "eastus2"
database_location = "centralus"