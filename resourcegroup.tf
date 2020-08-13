/*
 * ---------- Ressource Groups ----------
 */

resource "azurerm_resource_group" "transit_rg" {
  name     = "${var.project}-transit-rg"
  location = var.location
}