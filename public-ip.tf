resource "azurerm_public_ip" "TN_PublicIP" {
  name                         = "TN_PublicIP"
  resource_group_name          = "${azurerm_resource_group.TN_Resource.name}"
  location                     = "${var.resource_location}"
  public_ip_address_allocation = "Static"
  domain_name_label            = "thallesn"
}
