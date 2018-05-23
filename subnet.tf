### Network Subnets - 
#1 for Backend Application
#1 for Frontend Web Application

resource "azurerm_subnet" "TN_SN_App" {
  name                      = "App"
  virtual_network_name      = "${azurerm_virtual_network.TN_VNET.name}"
  resource_group_name       = "${azurerm_resource_group.TN_Resource.name}"
  address_prefix            = "10.0.1.0/24"
  network_security_group_id = "${azurerm_network_security_group.TN_Security_Group_App.id}"
}

resource "azurerm_subnet" "TN_SN_Web" {
  name                      = "Web"
  virtual_network_name      = "${azurerm_virtual_network.TN_VNET.name}"
  resource_group_name       = "${azurerm_resource_group.TN_Resource.name}"
  address_prefix            = "10.0.2.0/24"
  network_security_group_id = "${azurerm_network_security_group.TN_Security_Group_Web.id}"
}
