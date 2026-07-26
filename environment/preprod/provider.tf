# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.80.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "qa"
    storage_account_name = "qaprod1234"
    container_name       = "tfstate"
    key                  = "VM1.tfstate"
  }
}
# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}