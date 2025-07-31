resource "azurerm_virtual_network" "vnet1" {
  name                = var.vnet_name
  location            = var.vnet_location
  resource_group_name = var.rg_name
  address_space       = var.address_space
}


variable "vnet_name" {}
variable "vnet_location" {}
variable "rg_name" {}
variable "address_space" {}

