#Create a public IP to conect the machine to the internet
resource "azurerm_public_ip" "tn_publicip" {
  name                         = "tn_publicip"
  resource_group_name          = "${azurerm_resource_group.tn_resource.name}"
  location                     = "${var.resource_location}"
  public_ip_address_allocation = "Static"
  domain_name_label            = "thallesn"

  tags = {
    enviroment = "${var.env_name}"
    category   = "${var.env_category}"
  }
}
