#Variables
variable "resource_location" {}

variable "az_subscription_id" {}
variable "az_client_id" {}
variable "az_client_secret" {}
variable "az_tenant_id" {}

#VMs
variable "vm_admin_password" {}

variable "resource_group_name" {
  default = "training_resource"
}
