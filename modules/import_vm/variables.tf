# other
variable "vm_name" {}
variable "vm_username" {}
variable "vm_password" {}
variable "target_node" {}
variable "description" {}
variable "ssh_public_keys" {}
variable "scsi_hardware" {}
# agent
variable "enabled" {}
# cpu
variable "vm_cores" {}
variable "type" {}
# mem
variable "vm_memory" {}
# network
variable "vm_ip_and_mask" {}
variable "vm_gateway" {}
variable "network_bridge" {}
variable "firewall" {}
# disks
variable "disk_size" {}
variable "disk_storage" {}
variable "iothread" {}