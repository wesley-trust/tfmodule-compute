output "public_ip_id" {
  value = try(module.public_load_balancer[0].public_ip_id, null)
}

output "virtual_machine_id" {
  value = local.virtual_machine_id
}

output "resource_group_name" {
  value = module.resource_group.name
}

output "network_name" {
  value = module.service_network.network_name
}