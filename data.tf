data "azurerm_image" "search" {
  count = var.resource_image != null ? 1 : 0

  name                = var.resource_image
  resource_group_name = var.resource_image_group
}
