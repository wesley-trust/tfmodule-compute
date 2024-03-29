# Creation of key vault
module "key_vault" {
  count                                = var.provision_scale_set != true ? (var.provision_key_vault == true ? 1 : 0) : 0
  source                               = "github.com/wesley-trust/tfsubmodule-key_vault?ref=v1-key_vault"
  resource_location                    = module.resource_group.location
  resource_group_name                  = module.resource_group.name
  resource_environment                 = var.service_environment
  resource_name                        = local.resource_name
  resource_secret                      = random_password.password
  resource_instance_count              = var.resource_instance_count
  resource_key_vault_access_object_ids = var.resource_key_vault_access_object_ids
}
