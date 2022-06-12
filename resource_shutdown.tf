resource "azurerm_dev_test_global_vm_shutdown_schedule" "shutdown_schedule" {
  count              = var.resource_shutdown_enabled == true ? var.resource_instance_count : 0
  virtual_machine_id = module.virtual_machine[count.index].id
  location           = module.resource_group.location
  enabled            = true

  daily_recurrence_time = "2300"
  timezone              = "GMT Standard Time"

  notification_settings {
    enabled = false
  }
}
