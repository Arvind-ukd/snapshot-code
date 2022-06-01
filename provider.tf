terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.2.0"
    }
  }
}
provider "azurerm" {
  features {}

  subscription_id   = "2dd7ef84-05cb-4faf-9f4e-1e216b03b037"
  tenant_id         = "892832e4-1053-4d49-9742-3eb8018db8c5"
  client_id         = "86085a33-ee4d-4468-a8ad-9189a6a14b18"
  client_secret     = "ipx8Q~JDPAMaO-XLoOaGawjU6sAM25E9IPA0Ma8-"
}

