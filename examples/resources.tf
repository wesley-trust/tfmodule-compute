module "compute" {
  for_each                         = toset(var.service_location)
  source                           = "../"
  service_environment              = var.service_environment
  service_deployment               = var.service_deployment
  service_name                     = var.service_name
  service_location                 = each.value
  resource_name                    = local.resource_name
  resource_instance_count          = var.resource_instance_count
  resource_instance_size           = local.resource_instance_size
  resource_vm_sku                  = var.resource_vm_sku
  resource_address_space           = lookup(var.resource_address_space, each.value, null)
  resource_dns_servers             = lookup(var.resource_dns_servers, each.value, null)
  resource_network_role            = var.resource_network_role
  operating_system_platform        = var.operating_system_platform
  provision_scale_set              = var.provision_scale_set
  provision_public_load_balancer   = var.provision_public_load_balancer
  resource_shutdown_enabled        = var.resource_shutdown_enabled
  resource_data_disk_count         = var.resource_data_disk_count
  resource_network_interface_count = var.resource_network_interface_count
}
