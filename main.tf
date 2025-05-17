resource "azurerm_resource_group" "rg" {
  name     = "rg-terraform-demo"
  location = "Australia East"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-terraform-demo"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}
