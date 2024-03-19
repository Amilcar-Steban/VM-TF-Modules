variable "prefix" {
  type        = string
  description = "Prefix for resource names"
}
variable "name_function" {
  type        = string
  description = "Name of the function"
}
variable "location" {
  type        = string
  description = "Location for the Azure resources"
}
variable "os_disk_type" {
    type = string
    description = "type of the os disk. example Standard_LRS"
}
variable "admin_usename" {
    type = string
    description = "local admin user of the virtual machine"
}

variable "resource_group_name" {
    type = string
    description = "resource group name of the virtual network"
}

variable "image_publisher" {
    type = string
    description = "Azure image publisher"
    default = "Canonical"
}
variable "image_offer" {
    type = string
    description = "Azure image offer"
    default = "UbuntuServer"
}
variable "image_sku" {
    type = string
    description = "Azure image sku"
    default = "18.04-LTS"
}

variable "vmname" {
    type = string
    description = "name of the vm"
}
variable "vm_size" {
    type = string
    description = "size of the virtual machine"
}
