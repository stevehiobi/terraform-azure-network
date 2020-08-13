output "ressourcegroup_name" {
  description = "Name of the ressource group"
  value       = azurerm_resource_group.transit_rg.name
}

output "ressourcegroup_location" {
  description = "Name of the ressource group"
  value       = azurerm_resource_group.transit_rg.location
}

output "ressourcegroup_id" {
  description = "ID of the ressource group"
  value       = azurerm_resource_group.transit_rg.id
}

output "transit_vnet_name" {
  description = "name of the transit vnet"
  value       = azurerm_virtual_network.transit_vnet.name
}

output "transit_vnet_address_space" {
  description = "address_space of the transit vnet"
  value       = azurerm_virtual_network.transit_vnet.address_space
}
