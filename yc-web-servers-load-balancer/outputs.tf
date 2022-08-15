output "internal_ip_lemp_vm" {
  value = module.new_instance_lemp.internal_ip
}

output "external_ip_lemp_vm" {
  value = module.new_instance_lemp.external_ip
}

output "internal_ip_lamp_vm" {
  value = module.new_instance_lamp.internal_ip
}

output "external_ip_lamp_vm" {
  value = module.new_instance_lamp.external_ip
}

output "load_balancer_external_ip" {
  value = tolist(element(yandex_lb_network_load_balancer.load-balancer.listener[*], 0).external_address_spec)[0].address
}