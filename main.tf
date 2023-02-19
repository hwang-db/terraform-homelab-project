provider "azurerm" {
  features {}
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}


resource "azurerm_resource_group" "demorg" {
  name     = "${var.rg_name}-tf-cloud-demo-rg"
  location = var.location
}
