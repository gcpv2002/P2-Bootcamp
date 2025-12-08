terraform {
  backend "azurerm" {
    resource_group_name  = "stateFiles-RG"
    storage_account_name = "statefilesforp2"
    container_name       = "devstatefiles"
    key                  = "dev.tfstate"
  }
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "rg" {
  source = "../modules/resourcegroup"
  rg-name = var.rgname-var
  rg-location = var.location-var
}

module "aks" {
  source = "../modules/aks"
  aks-name = var.aksname-var
  aks-location = var.aks-location-var
  aks-dns = var.dns-var

  nodepool-name = var.aks-nodepool-var
  aks-rg = var.aksrg-var
  min-count = var.min-count-var
  max-count = var.max-count-var
  node-vm-size = var.node-vm-size-var

  depends_on = [
    module.rg
  ]
}