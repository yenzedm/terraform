terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "0.83.1"
    }
  }
}

resource "proxmox_virtual_environment_vm" "vm" {
  name          = var.vm_name
  node_name     = var.target_node
  description   = var.description
  scsi_hardware = var.scsi_hardware

  agent {
    enabled = var.enabled
  }
  
  cpu {
    cores = var.vm_cores
    type  = var.type
  }

  memory {
    dedicated = var.vm_memory
  }

  network_device {
    bridge   = var.network_bridge
    firewall = var.firewall
  }

  # Disk configuration to resize the template's disk
  disk {
    interface    = "scsi0" # Must match the template's disk interface
    size         = var.disk_size
    file_format  = "raw" # Match template's format
    datastore_id = var.disk_storage
    iothread     = var.iothread
  }

  operating_system {
    type = "l26"
  }

  # Cloud init configuration for the VM
  initialization {
    ip_config {
      ipv4 {
        address = var.vm_ip_and_mask
        gateway = var.vm_gateway
      }
    }
    user_account {
      keys     = [var.ssh_public_keys]
      username = var.vm_username
      password = var.vm_password
    }
  }
}
