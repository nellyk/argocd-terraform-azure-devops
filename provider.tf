

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}