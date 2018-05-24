terraform {
  required_version = ">= 0.11.7"

  backend "azurerm" {
    resource_group_name  = "storageaccount"
    storage_account_name = "tnsatraining"
    container_name       = "terraform-state"
    key                  = "infra/prod/net/terraform.tfstate"
  }
}
