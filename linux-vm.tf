# resource "azurerm_linux_virtual_machine" "mylinuxvm" {
#   name = "mylinuxvm01"
#   computer_name = "Devlinux-vm01"
#   resource_group_name = azurerm_resource_group.aks-rg01.name
#   location = azurerm_resource_group.aks-rg01.location
#   size = "Standard_DS1_V2"
#   admin_username = "azureuer"
#   network_interface_ids = [ azurerm_network_interface.myvmnic.id ]
#   admin_ssh_key {
#     username = "azureuser"
#     public_key = file("${path.modele}/ssh-keys/terraform-azure.pub")

#   }
#   os_disk {
#     name = "OS Disk"
#     caching = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }
#   source_image_reference {
#     publisher = "RedHat"
#     offer = "RHEL"
#     sku = "83-gen2"
#     version = "latest"
#     }
# }
