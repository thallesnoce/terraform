module "appvm" {
  source                 = "../../../modules/vm/windows2012r2"
  vm_name                = "app01"
  vm_location            = "${var.resource_location}"
  vm_resource_group_name = "${var.resource_group_name}"
  vm_subneid             = "${data.terraform_remote_state.dev_net.app_subnet_id}"
  vm_envname             = "development"
  vm_category            = "training"
  vm_admin_password      = "${var.vm_admin_password}"
}
