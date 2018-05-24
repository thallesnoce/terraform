## App RDP rules
resource "azurerm_network_security_rule" "tn_security_rule_app_rdp_in" {
  name                        = "allow_rdp_in"
  resource_group_name         = "${var.resource_group_name}"
  network_security_group_name = "${data.terraform_remote_state.dev_net.app_network_security_group_name}"
  priority                    = 200
  direction                   = "InBound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "3389"
  source_address_prefix       = "VirtualNetwork"
  destination_address_prefix  = "${data.terraform_remote_state.dev_net.app_subnet_prefix}"
}

resource "azurerm_network_security_rule" "tn_security_rule_app_rdp_out" {
  name                        = "allow_rdp_out"
  resource_group_name         = "${var.resource_group_name}"
  network_security_group_name = "${data.terraform_remote_state.dev_net.app_network_security_group_name}"
  priority                    = 200
  direction                   = "OutBound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "${data.terraform_remote_state.dev_net.app_subnet_prefix}"
  destination_address_prefix  = "VirtualNetwork"
}
