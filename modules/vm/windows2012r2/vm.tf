#Network Interface Card - NIC
#Allow the machine to communicate to the network
resource "azurerm_network_interface" "vm_windows2012r2" {
  name                = "${var.vm_name}-nic"
  location            = "${var.vm_location}"
  resource_group_name = "${var.vm_resource_group_name}"

  ip_configuration {
    name                          = "ipconfig"
    subnet_id                     = "${var.vm_subneid}"
    private_ip_address_allocation = "Dynamic"
  }

  tags {
    enviroment = "${var.vm_envname}"
    category   = "${var.vm_category}"
  }
}

#Create the virtual machine
resource "azurerm_virtual_machine" "vm_windows2012r2" {
  name                             = "${var.vm_name}"
  location                         = "${var.vm_location}"
  resource_group_name              = "${var.vm_resource_group_name}"
  network_interface_ids            = ["${azurerm_network_interface.vm_windows2012r2.id}"]
  vm_size                          = "${var.vm_size}"
  delete_os_disk_on_termination    = true
  delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2012-R2-Datacenter"
    version   = "latest"
  }

  storage_os_disk {
    name          = "${var.vm_name}-os-disk"
    caching       = "ReadWrite"
    create_option = "FromImage"
  }

  storage_data_disk {
    name          = "${var.vm_name}-data-disk"
    create_option = "Empty"
    lun           = 0
    disk_size_gb  = "${var.vm_data_disk_size}"
  }

  os_profile {
    computer_name  = "${upper(var.vm_name)}"
    admin_username = "${var.vm_admin_username}"
    admin_password = "${var.vm_admin_password}"
  }

  os_profile_windows_config {
    provision_vm_agent        = true
    enable_automatic_upgrades = false
  }

  tags {
    enviroment = "${var.vm_envname}"
    category   = "${var.vm_category}"
  }
}
