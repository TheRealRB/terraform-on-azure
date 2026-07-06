environment = "staging"

address_space           = ["10.5.0.0/24"]
subnet_address_prefixes = ["10.5.0.0/28"]

deploy_vm = false
vm_count  = 1
vm_size   = "Standard_D2s_v3"

TF_Backend_Key = staging.tfstate

deploy_database = false
database_sku = "Basic"

location          = "eastus2"
database_location = "centralus"