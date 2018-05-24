module "webvm" {
  source                 = "../../../modules/vm/windows2012r2"
  vm_name                = "web01"
  vm_location            = "${var.resource_location}"
  vm_resource_group_name = "training_resource"
  vm_subneid             = "${data.terraform_remote_state.dev_net.web_subnet_id}"
  vm_envname             = "development"
  vm_category            = "training"
  vm_admin_password      = "${var.vm_admin_password}"
}
