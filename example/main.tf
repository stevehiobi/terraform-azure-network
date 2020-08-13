provider "azurerm" {
  version = "~>2.4.0"
  features {}
}

module "azure_network" {
  source = "../../azure-transit-network"

  project     = var.project
  environment = var.environment

  location = "East US"

  vnet_cidr            = ["10.6.0.0/16"]
  subnet_cidrs_public  = "10.6.0.0/18"
  subnet_cidrs_private = "10.6.64.0/18"
  subnet_cidrs_mgmt    = "10.6.128.0/18"

  tags = {
    environment = var.environment
    project     = var.project
  }

  vnet_tags = {}

}