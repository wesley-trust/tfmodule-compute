data "azurerm_images" "search" {
  count = var.resource_image != null ? 1 : 0

  resource_group_name = var.resource_image_group

  tags_filter = {
    name_prefix = var.resource_image
    version     = "latest"
    environment = var.service_environment
    deployment  = var.service_deployment
  }
}

data "azurerm_image" "select" {
  count = var.resource_image != null ? 1 : 0

  name = data.azurerm_images.search[0].images[0].name

  resource_group_name = var.resource_image_group
}