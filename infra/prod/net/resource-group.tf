# Create a Resource Group
resource "azurerm_resource_group" "tn_resource" {
  name     = "training_resource"
  location = "${var.resource_location}"

  tags = {
    enviroment = "${var.env_name}"
    category   = "${var.env_category}"
  }
}
