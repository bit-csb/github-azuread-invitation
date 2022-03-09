terraform {
  required_version = "~>1.1.2"

  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~>2.15.0"
    }
  }
}
