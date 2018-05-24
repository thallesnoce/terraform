# credentials
variable "az_subscription_id" {}

variable "az_client_id" {}
variable "az_client_secret" {}
variable "az_tenant_id" {}

# environment
variable "resource_location" {}

variable "env_name" {
  default = "development"
}

variable "env_category" {
  default = "training"
}
