provider "azurerm" {
  features {}
  client_id       = var.CLIENT_ID
  client_secret   = var.CLIENT_SECRET
  tenant_id       = var.TENANT_ID
  subscription_id = var.SUBSCRIPTION_ID
}


resource "azurerm_resource_group" "demorg" {
  name     = "${var.rg_name}-tf-cloud-demo-rg"
  location = var.location
}
