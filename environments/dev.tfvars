environment = "dev"
subscription_id = "2860e008-3f26-4ac1-ad84-d08c05985dbd"
address_space           = ["10.5.0.0/24"]
subnet_address_prefixes = ["10.5.0.0/28"]

deploy_vm = true
vm_count  = 1
vm_size   = "Standard_D2s_v3"

TF_Backend_Key = dev.tfstate

deploy_database = true
database_sku = "Basic"

location          = "eastus2"
database_location = "centralus"