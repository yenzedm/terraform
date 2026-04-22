# output "vm_ips" {
#   value = {
#     for name, mod in module.compute :
#     name => mod.vm_ips
#   }
# }

# output "vm_ids" {
#   value = {
#     for name, mod in module.compute :
#     name => mod.vm_ids
#   }
# }

# output "eth_macs" {
#   value = {
#     for name, mod in module.compute :
#     name => mod.eth_macs
#   }
# }

output "vm_ips" {
  value = merge(
    { for name, mod in module.clone_vm : name => mod.vm_ips },
    { for name, mod in module.import_vm : name => mod.vm_ips }
  )
}

output "vm_ids" {
  value = merge(
    { for name, mod in module.clone_vm : name => mod.vm_ids },
    { for name, mod in module.import_vm : name => mod.vm_ids }
  )
}

output "eth_macs" {
  value = merge(
    { for name, mod in module.clone_vm : name => mod.eth_macs },
    { for name, mod in module.import_vm : name => mod.eth_macs }
  )
}