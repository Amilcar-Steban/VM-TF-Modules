# variables.tf file of virtual-machine module
variable "vmname" {
    type = string
    description = "The name of the virtual machine"
}
variable "resource_group_name" {
    type = string
    description = "The name of resource group"
}
variable "location" {
    type = string
    description = "Azure location "
}
variable "network_interface_ids" {
    type = list(string)
    description = "network interface id"
}
variable "vm_size" {
    type = string
    description = "size of the virtual machine"
}
variable "os_disk_type" {
    type = string
    description = "type of the os disk. example Standard_LRS"
}
variable "admin_usename" {
    type = string
    description = "local admin user of the virtual machine"
}
variable "image_publisher" {
    type = string
    description = "Azure image publisher"
}
variable "image_offer" {
    type = string
    description = "Azure image offer"
}
variable "image_sku" {
    type = string
    description = "Azure image sku"
}
