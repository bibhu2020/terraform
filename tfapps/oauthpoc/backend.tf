terraform {
  backend "azurerm" {
    resource_group_name  = "admin-rg"
    storage_account_name = "adminrg991a"
    container_name       = "scm-releases"
    key                  = "tfpoc-poc.tfstate"
    use_azuread_auth     = true
  }
}
