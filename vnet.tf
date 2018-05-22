resource "azurerm_virtual_network" "TN_VNET" {
  name                = "TN_Virtual_Network"
  resource_group_name = "${azurerm_resource_group.TN_Resource.name}"
  address_space       = ["10.0.0.0/16"]
  location            = "${var.resource_location}"
  dns_servers         = ["10.0.0.4", "10.0.0.5"]
}
