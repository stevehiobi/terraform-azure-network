/*
 * ---------- Subnets ----------
 */

resource "azurerm_subnet" "public" {
  name                 = "PublicSubnet"
  resource_group_name  = azurerm_resource_group.transit_rg.name
  virtual_network_name = azurerm_virtual_network.transit_vnet.name
  address_prefix       = var.subnet_cidrs_public
}

resource "azurerm_subnet" "private" {
  name                 = "PrivateSubnet"
  resource_group_name  = azurerm_resource_group.transit_rg.name
  virtual_network_name = azurerm_virtual_network.transit_vnet.name
  address_prefix       = var.subnet_cidrs_private
}

resource "azurerm_subnet" "mgmt" {
  name                 = "MgmtSubnet"
  resource_group_name  = azurerm_resource_group.transit_rg.name
  virtual_network_name = azurerm_virtual_network.transit_vnet.name
  address_prefix       = var.subnet_cidrs_mgmt
}