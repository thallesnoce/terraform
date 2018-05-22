output "vm_app_ip" {
  value = "${azurerm_network_interface.TN_ANI_APP.private_ip_address}"
}

output "vm_web_ip" {
  value = "${azurerm_network_interface.TN_ANI_WEB.private_ip_address}"
}
