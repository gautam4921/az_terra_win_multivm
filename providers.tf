#Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.98.0"
    }
  }

  required_version = ">= 1.1.0"
}
# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  #Configure a specific Subscription ID (optional)
}
