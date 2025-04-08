# Resource Grroup
resource "azurerm_resource_group" "rg" {
  name = "${var.client_name_prefix}${var.env}${var.location_abr}-${var.resource_group_postfix}" 
  location = var.location
}