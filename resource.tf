# resource "azurerm_resource_group" "ask-rg01" {
#   location = "eastus"
#   name = "aks-demo01"
# }

resource "azurerm_resource_group" "aks-rg01" {
  location = var.resource_group_location
  name     = local.rg_name
  tags     = var.Common_tags
}

