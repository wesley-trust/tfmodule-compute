module "data_disks" {
  depends_on = [
    module.resource_group,
    module.virtual_machine
  ]
  count                       = var.provision_scale_set != true ? var.resource_instance_count : 0
  source                      = "github.com/wesley-trust/tfsubmodule-disks?ref=v1-disks"
  resource_location           = module.resource_group.location
  resource_group_name         = module.resource_group.name
  resource_environment        = var.service_environment
  resource_name               = "${local.resource_name}${format("%02d", count.index + 1)}-vm"
  resource_zone               = local.platform_location_az_count > 1 ? (count.index % local.platform_location_az_count) + 1 : null
  resource_data_disk_count    = var.resource_data_disk_count
  resource_data_disk_size     = var.resource_data_disk_size
  resource_virtual_machine_id = module.virtual_machine[count.index].id
}
