data "terraform_remote_state" "dev_net" {
  backend = "azurerm"

  config {
    resource_group_name  = "storageaccount"
    storage_account_name = "tnsatraining"
    container_name       = "terraform-state"
    key                  = "infra/prod/net/terraform.tfstate"
  }
}
