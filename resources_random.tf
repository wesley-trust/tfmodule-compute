# Create random password
resource "random_password" "password" {
  count = var.provision_scale_set != true ? var.resource_instance_count : 1

  length  = 20
  special = true
}
