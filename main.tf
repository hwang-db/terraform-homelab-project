variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "demorg" {
  name     = "${var.rg_name}-tf-cloud-demo-rg"
  location = var.location
}
// to test 3rd workspace, changed again

resource "azurerm_resource_group" "demorg2" {
  name     = "${var.rg_name}-tf-cloud-demo-rg-2"
  location = var.location
}
