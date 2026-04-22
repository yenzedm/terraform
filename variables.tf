variable "proxmox_api_url" {
  type = string
}

variable "proxmox_api_token_id" {
  type = string
}

variable "proxmox_api_token_secret" {
  type      = string
  sensitive = true
}

variable "vm_password" {
  type      = string
  sensitive = true
  default   = null
}

variable "mod" {
  type = string
}

variable "clone_vms" {
  type = map(object({
    vm_template_id  = string
    tags            = list(string)
    target_node     = string
    vm_ip_and_mask  = string
    vm_gateway      = string
    vm_cores        = string
    vm_memory       = string
    disk_size       = string
    disk_storage    = string
    network_bridge  = string
    ssh_public_keys = string
    vm_username     = string
    description     = string
  }))
}

variable "import_vms" {
  type = map(object({
    # other
    target_node     = string
    vm_username     = string
    description     = string
    ssh_public_keys = string
    scsi_hardware   = string
    # agent
    enabled = bool
    # cpu
    vm_cores = string
    type     = string
    # mem 
    vm_memory = string
    # network 
    vm_ip_and_mask = string
    vm_gateway     = string
    network_bridge = string
    firewall       = bool
    # disks
    disk_size    = string
    disk_storage = string
    iothread     = bool
  }))
}