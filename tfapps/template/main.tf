terraform {
  required_providers {
    azurerm = {
      source  = "registry.terraform.io/hashicorp/azurerm"
      version = "3.87.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.47.0"
    }
    # http = {
    #   source  = "hashicorp/http"
    #   version = "3.4.1"
    # }
    # random = {
    #   source  = "hashicorp/random"
    #   version = "3.6.0"
    # }
    # tls = {
    #   source  = "hashicorp/tls"
    #   version = "4.0.5"
    # }
    # kubernetes = {
    #   source  = "hashicorp/kubernetes"
    #   version = "= 2.24.0"
    #   configuration_aliases = [ kubernetes.dr ]
    # }
    # helm = {
    #   source  = "hashicorp/helm"
    #   version = "= 2.12.1"
    #   configuration_aliases = [ helm.dr ]
    # }
  }

  required_version = ">= 1.1.0"
}

# provider "tls" {
#   # Configuration options
# }

provider "azurerm" {
  # use_oidc        = true
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  # client_id       = var.AzureSPNAppId
  # client_secret   = var.AzureSPNPwd
  # tenant_id       = var.AzureTenantId
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
  skip_provider_registration = true
}

provider "azuread" {
  # Configuration options
}

## Define the local variables here.
locals {

  tags     = { Environment = "${var.env}", Project = "${var.app}", Application = "${var.app}", Status = "InUse", Owner = "${var.owner}", Co-Owner = "${var.co-owner}", workitem = "${var.workitem}" }
  location = var.location
  prefix   = format("%s-%s-%s", var.app, var.env, var.location)
  prefix2  = format("%s%s%s", var.app, var.env, var.location)

  address_cidr = "10.0.0.0/8"
  subnets = {
    subnet-default = {
      name : "subnet-default"
      cidr : ["10.240.0.0/16"]
      service_endpoints : ["Microsoft.AzureActiveDirectory", "Microsoft.Web", "Microsoft.Storage", "Microsoft.KeyVault", "Microsoft.ContainerRegistry", "Microsoft.Sql"]
      private_link_service_network_policies_enabled : false
    },
    # subnet-vnodes = {
    #   name: "subnet-vnodes"
    #   cidr: ["10.241.0.0/16"]
    #   service_endpoints: ["Microsoft.AzureActiveDirectory","Microsoft.Web", "Microsoft.Storage", "Microsoft.KeyVault", "Microsoft.ContainerRegistry", "Microsoft.Sql"]
    #   private_link_service_network_policies_enabled: false 
    # },
  }
}

data "azurerm_client_config" "current" {}

data "azuread_client_config" "current" {}