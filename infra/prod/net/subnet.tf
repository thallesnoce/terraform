### Network Subnets - 

#Backend Application
resource "azurerm_subnet" "tn_sn_app" {
  name                      = "App"
  virtual_network_name      = "${azurerm_virtual_network.vnet.name}"
  resource_group_name       = "${azurerm_resource_group.tn_resource.name}"
  address_prefix            = "10.0.1.0/24"
  network_security_group_id = "${azurerm_network_security_group.tn_security_group_app.id}"
}

#Frontend Web Application
resource "azurerm_subnet" "tn_sn_web" {
  name                      = "Web"
  virtual_network_name      = "${azurerm_virtual_network.vnet.name}"
  resource_group_name       = "${azurerm_resource_group.tn_resource.name}"
  address_prefix            = "10.0.2.0/24"
  network_security_group_id = "${azurerm_network_security_group.tn_security_group_web.id}"
}
