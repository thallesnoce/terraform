resource "azurerm_network_interface" "TN_ANI_APP" {
  name                = "TN_AzureNetworkInterface_App"
  location            = "${var.resource_location}"
  resource_group_name = "${azurerm_resource_group.TN_Resource.name}"

  ip_configuration {
    name                          = "IpConfiguration_App"
    subnet_id                     = "${azurerm_subnet.TN_SN_App.id}"
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "TN_VM_APP" {
  name                             = "TN_APP01"
  location                         = "${var.resource_location}"
  resource_group_name              = "${azurerm_resource_group.TN_Resource.name}"
  network_interface_ids            = ["${azurerm_network_interface.TN_ANI_APP.id}"]
  vm_size                          = "Standard_B2s"
  delete_os_disk_on_termination    = true
  delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServerSemiAnnual"

    sku     = "Datacenter-Core-1709-smalldisk"
    version = "latest"
  }

  storage_os_disk {
    name          = "App_OS_Disk"
    caching       = "ReadWrite"
    create_option = "FromImage"
  }

  storage_data_disk {
    name          = "App_Data_Disk"
    create_option = "Empty"
    lun           = 0
    disk_size_gb  = 10
  }

  os_profile {
    computer_name  = "APP01"
    admin_username = "tnadmin"
    admin_password = "Test12345%"
  }

  os_profile_windows_config {
    provision_vm_agent        = true
    enable_automatic_upgrades = false
  }
}
