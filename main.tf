# Generate random string for the init keyvault
#
resource "random_string" "keyvault_name" {
  length  = 16
  upper   = false
  number  = false
  special = false
}

#
# Lookups
#
data "azurerm_client_config" "current" {}
data "azurerm_subscription" "current" {}