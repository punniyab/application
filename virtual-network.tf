# resource "azurerm_virtual_network" "mynetwork" {
#   name                = local.vnet_name
#   address_space       = var.virtual_network_address_space
#   resource_group_name = azurerm_resource_group.aks-rg01.name
#   location            = azurerm_resource_group.aks-rg01.location
#   tags                = var.Common_tags
# }

# resource "azurerm_subnet" "mysubnet-01" {
#   name                 = local.subnet_name
#   resource_group_name  = azurerm_resource_group.aks-rg01.name
#   virtual_network_name = azurerm_virtual_network.mynetwork.name
#   address_prefixes     = ["10.0.1.0/24"]
# }

# resource "azurerm_public_ip" "my-publiicip-01" {
#   depends_on = [
#     azurerm_virtual_network.mynetwork,
#     azurerm_subnet.mysubnet-01
#   ]
#   name                = "mypublic-ip"
#   resource_group_name = azurerm_resource_group.aks-rg01.name
#   location            = azurerm_resource_group.aks-rg01.location
#   allocation_method   = "Static"
#   domain_name_label   = "app-vm-${random_string.myrandom.id}"
#   tags                = var.Common_tags
# }

# resource "azurerm_network_interface" "myvmnic" {
#   name                = "myvmnic"
#   location            = azurerm_resource_group.aks-rg01.location
#   resource_group_name = azurerm_resource_group.aks-rg01.name
#   ip_configuration {
#     name                          = "Internal"
#     subnet_id                     = azurerm_subnet.mysubnet-01.id
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id          = azurerm_public_ip.my-publiicip-01.id
#   }
# }

module "myvnet" {
  source  = "Azure/vnet/azurerm"
  version = "5.0.1"
  vnet_name = local.vnet_name
  resource_group_name = azurerm_resource_group.aks-rg01.name
  vnet_location = azurerm_resource_group.aks-rg01.location
  address_space = ["10.0.0.0/16"]
  subnet_prefixes = ["10.0.1.0/24" , "10.0.2.0/24" , "10.0.3.0/24"]
  subnet_names = ["subnet1", "subnet2", "subnet3"]

  subnet_service_endpoints = {
    subnet2 = ["Microsoft.Storage", "Microsoft.Sql"],
    subnet3 = ["Microsoft.AzureActiveDirectory"]
  }
}