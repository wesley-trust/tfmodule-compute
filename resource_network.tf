# Create spoke network dependencies
module "service_network" {
  source                        = "github.com/wesley-trust/tfsubmodule-network?ref=v1.1-network"
  service_name                  = var.service_name
  service_location_prefix       = local.service_location_prefix
  resource_location             = module.resource_group.location
  resource_group_name           = module.resource_group.name
  resource_environment          = var.service_environment
  resource_deployment           = var.service_deployment
  resource_address_space        = var.resource_address_space
  resource_dns_servers          = var.resource_dns_servers != null ? var.resource_dns_servers : null
  resource_network_subnet_count = var.provision_scale_set != true ? var.resource_network_interface_count : 1
  resource_network_role         = var.resource_network_role
}
