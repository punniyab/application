data "azurerm_virtual_network" "vnetds" {
  name                = azurerm_virtual_network.mynetwork.name
  resource_group_name = azurerm_resource_group.aks-rg01.name
}

output "ds_vnet_name" {
  value = data.azurerm_virtual_network.vnetds.name
}

output "ds_vnet_id" {
  value = data.azurerm_virtual_network.vnetds.id
}

output "ds_vnet_address" {
  value = data.azurerm_virtual_network.vnetds.address_space
}

output "ds_subscription_cost" {
  value = data.azurerm_subscription.current.spending_limit
}