resource "azurerm_network_security_rule" "TN_Security_Rule_Web_RDP_In" {
  name                        = "allow_rdp_in"
  resource_group_name         = "${azurerm_resource_group.TN_Resource.name}"
  network_security_group_name = "${azurerm_network_security_group.TN_Security_Group_Web.name}"
  priority                    = 200
  direction                   = "InBound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "3389"
  source_address_prefix       = "Internet"
  destination_address_prefix  = "${azurerm_subnet.TN_SN_Web.address_prefix}"
}

resource "azurerm_network_security_rule" "TN_Security_Rule_Web_RDP_Out" {
  name                        = "allow_rdp_out"
  resource_group_name         = "${azurerm_resource_group.TN_Resource.name}"
  network_security_group_name = "${azurerm_network_security_group.TN_Security_Group_Web.name}"
  priority                    = 200
  direction                   = "OutBound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "${azurerm_subnet.TN_SN_Web.address_prefix}"
  destination_address_prefix  = "Internet"
}

## App RDP rules
resource "azurerm_network_security_rule" "TN_Security_Rule_App_RDP_In" {
  name                        = "allow_rdp_in"
  resource_group_name         = "${azurerm_resource_group.TN_Resource.name}"
  network_security_group_name = "${azurerm_network_security_group.TN_Security_Group_App.name}"
  priority                    = 200
  direction                   = "InBound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "3389"
  source_address_prefix       = "VirtualNetwork"
  destination_address_prefix  = "${azurerm_subnet.TN_SN_App.address_prefix}"
}

resource "azurerm_network_security_rule" "TN_Security_Rule_App_RDP_Out" {
  name                        = "allow_rdp_out"
  resource_group_name         = "${azurerm_resource_group.TN_Resource.name}"
  network_security_group_name = "${azurerm_network_security_group.TN_Security_Group_App.name}"
  priority                    = 200
  direction                   = "OutBound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "${azurerm_subnet.TN_SN_App.address_prefix}"
  destination_address_prefix  = "VirtualNetwork"
}
