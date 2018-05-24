## App Security Group
resource "azurerm_network_security_group" "tn_security_group_app" {
  name                = "tn_security_group_app"
  resource_group_name = "${azurerm_resource_group.tn_resource.name}"
  location            = "${var.resource_location}"

  tags = {
    enviroment = "${var.env_name}"
    category   = "${var.env_category}"
  }
}

## Web Security Group
resource "azurerm_network_security_group" "tn_security_group_web" {
  name                = "tn_security_group_web"
  resource_group_name = "${azurerm_resource_group.tn_resource.name}"
  location            = "${var.resource_location}"

  tags = {
    enviroment = "${var.env_name}"
    category   = "${var.env_category}"
  }
}
