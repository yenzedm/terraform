output "vm_ips" {
  description = "Ip address of the created VM"
  value       = proxmox_virtual_environment_vm.vm.ipv4_addresses
}

output "vm_ids" {
  value = proxmox_virtual_environment_vm.vm.id 
}