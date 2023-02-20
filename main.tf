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
// to test 3rd workspace