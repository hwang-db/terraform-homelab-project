variable "client_secret" {
  type = string
}

variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

provider "azurerm" {
  features {}

  client_id       = "ebfcf045-2a84-4a16-bca9-494e08ac029c"
  client_secret   = var.client_secret
  tenant_id       = "34f1bb02-ac1d-4c04-b051-58e094fa668c"
  subscription_id = "3e551f82-c624-4a3e-b8f6-e050a96a7004"
}


resource "azurerm_resource_group" "demorg" {
  name     = "${var.rg_name}-tf-cloud-demo-rg"
  location = var.location
}
