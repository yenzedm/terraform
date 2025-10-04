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

# variable "tags" {
#   type = list(string)
# }

# variable "vm_name" {
#   type    = string
#   default = "ubuntu-vm"
# }

# variable "target_node" {
#   type = string
# }

# variable "vm_cores" {
#   type    = string
#   default = 2
# }

# variable "vm_memory" {
#   type    = string
#   default = "2048"
# }

# variable "disk_size" {
#   type    = string
#   default = "20"
# }

# variable "disk_storage" {
#   type    = string
#   default = "local-lvm"
# }

# variable "network_bridge" {
#   type    = string
#   default = "vmbr0"
# }

# variable "ssh_public_keys" {
#   type    = string
#   default = ""
# }

# variable "vm_username" {
#   type = string
# }

variable "vm_password" {
  type      = string
  sensitive = true
  default   = null
}

variable "vms" {
  type = map(object({
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

