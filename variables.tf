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

variable "vms" {
  type = map(object({
    vm_template_id = string
    tags = list(string)
    target_node = string
    vm_cores       = string
    vm_memory    = string
    disk_size = string
    disk_storage = string
    network_bridge = string
    ssh_public_keys = string
    vm_username = string
  }))
}

