resource "azurerm_linux_virtual_machine" "AzureVirtualMachine" {
  name                  = "${var.CustomerName}-VM"
  location              = azurerm_resource_group.AzureResourceGroup.location
  resource_group_name   = azurerm_resource_group.AzureResourceGroup.name
  network_interface_ids = [azurerm_network_interface.AzureNetworkInterface.id]
  size                  = var.AzureVirtualMachineSize
  admin_username        = var.AdminUsername
  computer_name         = lower("${var.CustomerSubdomain}")

  os_disk {
    name                 = "${var.CustomerName}-osDisk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Debian"
    offer     = "debian-10"
    sku       = "10"
    version   = "latest"
  }

  admin_ssh_key {
    username   = var.AdminUsername
    public_key = var.AdminPublicKey
  }
}
