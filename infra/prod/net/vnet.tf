#Creation of the Virtual Network
resource "azurerm_virtual_network" "vnet" {
  name                = "tn_virtual_network"
  resource_group_name = "${azurerm_resource_group.tn_resource.name}"
  address_space       = ["10.0.0.0/16"]
  location            = "${var.resource_location}"
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  tags = {
    enviroment = "${var.env_name}"
    category   = "${var.env_category}"
  }
}
