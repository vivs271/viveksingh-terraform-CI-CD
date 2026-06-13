resource "azurerm_resource_group" "rg" {
 name = "vivsin-rg-viveksingh-terraform-CI-CD"
 location = "East US"
}
resource "azurerm_resource_group" "rg1" {
 name = "vivsin-rg-viveksingh-terraform-CI-CD1"
 location = "East US"
}

resource "azurerm_virtual_network" "vnet" {
 name = "vivsin-vnet-cicd-workshop"
 location = azurerm_resource_group.rg.location
 resource_group_name = azurerm_resource_group.rg.name
 address_space = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "subnet" {
 name = "vivsin-subnet-cicd-workshop"
 resource_group_name = azurerm_resource_group.rg.name
 virtual_network_name = azurerm_virtual_network.vnet.name
 address_prefixes = ["10.0.1.0/24"]
}

resource "azurerm_"