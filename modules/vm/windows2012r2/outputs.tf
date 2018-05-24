output "vm_name" {
  value = "${azurerm_virtual_machine.vm_windows2012r2.name}"
}

output "vm_privateip" {
  value = "${azurerm_network_interface.vm_windows2012r2.private_ip_address}"
}
