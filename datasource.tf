data "azurerm_resource_group" "mydata" {
  # depends_on = [ azurerm_resource_group.aks-rg01 ]
  name = azurerm_resource_group.aks-rg01.name
}

output "ds_rg_name" {
  value = data.azurerm_resource_group.mydata.name
}

output "ds_rg_location" {
  value = data.azurerm_resource_group.mydata.location
}