output "app_network_security_group_name" {
  value = "${azurerm_network_security_group.tn_security_group_app.name}"
}

output "web_network_security_group_name" {
  value = "${azurerm_network_security_group.tn_security_group_web.name}"
}

output "web_subnet_id" {
  value = "${azurerm_subnet.tn_sn_web.id}"
}

output "web_subnet_prefix" {
  value = "${azurerm_subnet.tn_sn_web.address_prefix}"
}

output "web_security_group_name" {
  value = "${azurerm_network_security_group.tn_security_group_web.name}"
}

output "app_subnet_id" {
  value = "${azurerm_subnet.tn_sn_app.id}"
}

output "app_subnet_prefix" {
  value = "${azurerm_subnet.tn_sn_app.address_prefix}"
}

output "app_security_group_name" {
  value = "${azurerm_network_security_group.tn_security_group_app.name}"
}

output "public_ip_address_id" {
  value = "${azurerm_public_ip.tn_publicip.id}"
}
