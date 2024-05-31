resource "azurerm_storage_account" "AzureStorageAccount" {
  name                     = lower("${var.CustomerName}sa")
  resource_group_name      = azurerm_resource_group.AzureResourceGroup.name
  location                 = azurerm_resource_group.AzureResourceGroup.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Customer = "staging"
  }
}