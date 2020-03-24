resource "azurerm_virtual_machine" "AzureVirtualMachine" {
  name                             = var.CustomerName
  location                         = azurerm_resource_group.AzureResourceGroup.location
  resource_group_name              = azurerm_resource_group.AzureResourceGroup.name
  network_interface_ids            = [azurerm_network_interface.AzureNetworkInterface.id]
  vm_size                          = var.AzureVirtualMachineSize
  delete_os_disk_on_termination    = true
  delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "credativ"
    offer     = "Debian"
    sku       = "9"
    version   = "latest"
  }

  storage_os_disk {
    name          = "${var.CustomerName}_osDisk"
    create_option = "FromImage"
  }

  # storage_data_disk {
  #   name              = "${var.CustomerName}_dataDisk"
  #   create_option     = "Empty"
  #   disk_size_gb      = var.DataDiskSize
  #   lun               = 0
  #   managed_disk_type = "Standard_LRS"
  # }

  os_profile {
    computer_name  = "${var.CustomerSubdomain}.${var.VendorDomainName}"
    admin_username = var.AdminUsername
    admin_password = var.AdminPassword
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}
