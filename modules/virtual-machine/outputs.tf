# outputs.tf file of virtual-machine module
output "vm_id" {
    description = "id of the fileshare"
    value = azurerm_linux_virtual_machine.vm.id
}