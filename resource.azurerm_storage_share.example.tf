resource "azurerm_storage_share" "example" {
  name                 = "sharename"
  storage_account_name = azurerm_storage_account.AzureStorageAccount.name
  # tier                 = "Cool" # not implemented yet. Will need to be applied after the provisioning
  quota = var.file_share_quota_size
}
