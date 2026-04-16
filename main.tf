terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }

  backend "azurerm" {
    resource_group_name = "tfstate-rg"
    storage_account_name = "tfstatekaustav123"
    container_name = "tfstate"
    key = "dev.terraform.tfstate"
  }
}


provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

module "network" {
  source = "./modules/network"

  resource_group_name = var.resource_group_name
  location = var.location

  vnet_name = var.vnet_name
  vnet_address_space = var.vnet_address_space
  subnet_name = var.subnet_name
  subnet_address_space = var.subnet_address_space
  nsg_name = var.nsg_name
}

module "compute" {
  source = "./modules/compute"

  resource_group_name = module.network.resource_group_name
  location = module.network.location
  subnet_id = module.network.subnet_id

  vm_size = var.vm_size
  admin_password = var.admin_password
}