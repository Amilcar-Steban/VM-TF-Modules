# main.tf file of virtual-machine module
resource "azurerm_linux_virtual_machine" "vm" {
    name                  = var.vmname
    resource_group_name   = var.resource_group_name
    location              = var.location
    size                  = var.vm_size
    admin_username        = var.admin_usename
    network_interface_ids = var.network_interface_ids
    
    admin_ssh_key {
    username   = var.admin_usename
    public_key = file("~/.ssh/vm-deploy-key-ssh.pub")
    }

    os_disk {
        caching                 = "ReadWrite"
        storage_account_type    = var.os_disk_type
    }
    source_image_reference {
        publisher = var.image_publisher
        offer     = var.image_offer
        sku       = var.image_sku
        version   = "latest"
    }
    tags = {
    environment = "dev"
    }
}