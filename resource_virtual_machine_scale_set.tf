# Create scale set
module "virtual_machine_scale_set" {
  depends_on = [
    module.service_network
  ]
  source                    = "github.com/wesley-trust/tfsubmodule-virtual_machine_scale_set?ref=v1.2-virtual_machine_scale_set"
  count                     = var.provision_scale_set == true ? 1 : 0
  name                      = local.resource_name
  source_image_id           = var.resource_image != null ? data.azurerm_image.select[0].id : null
  location                  = module.resource_group.location
  resource_group_name       = module.resource_group.name
  size                      = var.resource_instance_size
  instances                 = var.resource_instance_count
  admin_username            = var.admin_username
  admin_password            = random_password.password[count.index].result
  operating_system_platform = var.operating_system_platform
  disk_size_gb              = var.resource_disk_size
  ephemeral_disk_enabled    = var.ephemeral_disk_enabled
  sku                       = var.resource_vm_sku
  environment               = var.service_environment

  # Select the subnet, only a single NIC is supported at this time
  subnet_id = one(module.service_network.subnet_id)
}
