output "vm_ips" {
  value = {
    for name, mod in module.compute :
    name => mod.vm_ips
  }
}

output "vm_ids" {
  value = {
    for name, mod in module.compute :
    name => mod.vm_ids
  }
}