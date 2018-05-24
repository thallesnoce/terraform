variable "vm_name" {
  description = "Name of the Virtual machine"
}

variable "vm_location" {
  description = "Location of the resource"
}

variable "vm_resource_group_name" {
  description = "The resource group that the resource belongs to"
}

variable "vm_subneid" {
  description = "The id of the subnet that VM belongs to"
}

variable "vm_envname" {
  description = "The name of the enviroment that the vm belongs to"
}

variable "vm_category" {
  description = "The name of the category that the vm belongs to"
}

variable "vm_size" {
  description = "Determine the size of the vm"
  default     = "Standard_B2s"
}

variable "vm_data_disk_size" {
  description = "Determine the size of the data disk of the vm"
  default     = 10
}

variable "vm_admin_username" {
  description = "The username of the admin account"
  default     = "tnadmin"
}

variable "vm_admin_password" {
  description = "The password of the admin account"
}
