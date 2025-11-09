terraform {
  required_version = ">=1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "terraform-storage-rg"
    storage_account_name = "terraformstate102025"
    container_name       = "tfstatefiles"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "61d8423a-09bb-4fac-8240-483d133e105e"
}

resource "random_string" "myrandom" {
  length  = 6
  upper   = false
  special = false
  #   number = false   
}

# provider "azurerm" {
#     features {
#       virtual_machine {
#         delete_os_disk_on_deletion = true
#       }
#     }
#     subscription_id = "61d8423a-09bb-4fac-8240-483d133e105e"
#     alias = "provider2-westus"
# }


