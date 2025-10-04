module "compute" {
  for_each = var.vms
  source          = "./modules/compute"
  vm_name         = each.key
  vm_template_id  = each.value.vm_template_id 
  tags            = each.value.tags
  target_node     = each.value.target_node
  vm_cores        = each.value.vm_cores
  vm_memory       = each.value.vm_memory
  network_bridge  = each.value.network_bridge
  disk_size       = each.value.disk_size
  disk_storage    = each.value.disk_storage
  ssh_public_keys = each.value.ssh_public_keys
  vm_username     = each.value.vm_username
  vm_password     = var.vm_password
}
