resource "azurerm_virtual_network" "transit_vnet" {
  name                = "${var.project}-transit-vnet"
  location            = azurerm_resource_group.transit_rg.location
  resource_group_name = azurerm_resource_group.transit_rg.name
  address_space       = var.vnet_cidr

  tags = merge(
    {
      "Name" = "${var.project}-vnet-${var.environment}"
    },
    var.tags,
    var.vnet_tags
  )
}