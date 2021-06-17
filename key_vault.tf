resource "azurerm_key_vault" "init_keyvault" {
  name                            = random_string.keyvault_name.result
  resource_group_name             = var.keyvault_rg
  location                        = var.location
  tenant_id                       = data.azurerm_client_config.current.tenant_id
  sku_name                        = "standard"
  enabled_for_deployment          = true
  enabled_for_disk_encryption     = false
  enabled_for_template_deployment = false
}

resource "azurerm_key_vault" "unseal_keyvault" {
  name                            = "unseal${random_string.keyvault_name.result}"
  resource_group_name             = var.keyvault_rg
  location                        = var.location
  tenant_id                       = data.azurerm_client_config.current.tenant_id
  sku_name                        = "standard"
  enabled_for_deployment          = true
  enabled_for_disk_encryption     = false
  enabled_for_template_deployment = false
}