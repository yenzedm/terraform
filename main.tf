# create vm
module "clone_vm" {
  for_each        = var.mod == "clone" ? var.clone_vms : {}
  source          = "./modules/clone_vm"
  vm_name         = each.key
  vm_template_id  = each.value.vm_template_id
  vm_ip_and_mask  = each.value.vm_ip_and_mask
  vm_gateway      = each.value.vm_gateway
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
  description     = each.value.description
}

module "import_vm" {
  for_each = var.mod == "import" ? var.import_vms : {}
  source   = "./modules/import_vm"
  # other
  vm_name         = each.key
  vm_username     = each.value.vm_username
  vm_password     = var.vm_password
  target_node     = each.value.target_node
  description     = each.value.description
  ssh_public_keys = each.value.ssh_public_keys
  scsi_hardware   = each.value.scsi_hardware
  # agent
  enabled = each.value.enabled
  # cpu
  vm_cores = each.value.vm_cores
  type     = each.value.type
  # mem
  vm_memory = each.value.vm_memory
  # network
  vm_ip_and_mask = each.value.vm_ip_and_mask
  vm_gateway     = each.value.vm_gateway
  network_bridge = each.value.network_bridge
  firewall       = each.value.firewall
  # disks
  disk_size    = each.value.disk_size
  disk_storage = each.value.disk_storage
  iothread     = each.value.iothread
}