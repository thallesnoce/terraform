### Network

resource "azurerm_virtual_network" "TN_VNET" {
  name                = "TN_Virtual_Network"
  resource_group_name = "${azurerm_resource_group.TN_Resource.name}"
  address_space       = ["10.0.0.0/16"]
  location            = "${var.resource_location}"
  dns_servers         = ["10.0.0.4", "10.0.0.5"]
}

resource "azurerm_subnet" "TN_SN_App" {
  name                 = "App"
  virtual_network_name = "${azurerm_virtual_network.TN_VNET.name}"
  resource_group_name  = "${azurerm_resource_group.TN_Resource.name}"
  address_prefix       = "10.0.1.0/24"
}

resource "azurerm_subnet" "TN_SN_Web" {
  name                 = "Web"
  virtual_network_name = "${azurerm_virtual_network.TN_VNET.name}"
  resource_group_name  = "${azurerm_resource_group.TN_Resource.name}"
  address_prefix       = "10.0.2.0/24"
}

resource "azurerm_public_ip" "TN_PublicIP" {
  name                         = "TN_PublicIP"
  resource_group_name          = "${azurerm_resource_group.TN_Resource.name}"
  location                     = "${var.resource_location}"
  public_ip_address_allocation = "Static"
  domain_name_label            = "thallesn"
}
