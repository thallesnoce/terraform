#Authenticate to the Azure
provider "azurerm" {
  subscription_id = "${var.az_subscription_id}"
  client_id       = "${var.az_client_id}"
  client_secret   = "${var.az_client_secret}"
  tenant_id       = "${var.az_tenant_id}"
}

# Create a Resource Group
resource "azurerm_resource_group" "TN_Resource" {
  name     = "Thalles"
  location = "${var.resource_location}"
}
