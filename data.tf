data "azurerm_images" "search" {
  count = var.resource_image != null ? 1 : 0

  images {
    name = var.resource_image
    tags = {
      version     = "latest"
      environment = var.service_environment
      deployment  = var.service_deployment
    }
  }

  resource_group_name = var.resource_image_group
}