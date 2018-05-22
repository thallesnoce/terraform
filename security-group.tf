## App Security Group
resource "azurerm_network_security_group" "TN_Security_Group_App" {
  name                = "TN_Security_Group_App"
  resource_group_name = "${azurerm_resource_group.TN_Resource.name}"
  location            = "${var.resource_location}"

  tags {
    enviroment = "development"
    category   = "sandbox"
  }
}

## Web Security Group
resource "azurerm_network_security_group" "TN_Security_Group_Web" {
  name                = "TN_Security_Group_Web"
  resource_group_name = "${azurerm_resource_group.TN_Resource.name}"
  location            = "${var.resource_location}"

  tags {
    enviroment = "development"
    category   = "sandbox"
  }
}
