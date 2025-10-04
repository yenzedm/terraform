proxmox_api_url = "https://192.168.1.111:8006"
vms = {
  "vm-1" = {
    vm_username = "ubuntu"
    tags = ["vm-1", "test"]
    target_node = "proxmox" 
    vm_cores       = 1
    vm_memory    = 2048
    disk_size = 50
    disk_storage = "local-lvm"
    network_bridge = "vmbr0"
    ssh_public_keys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDD9lxp+h4WBx0Yj+94pv5/uBcC4El3E69a0+xiZ1qx3C4RVpHPIwWwOU5qLJUdZkcuCbPI1UNa5uj0T+rMG0yPgF85kC/xSpq6iRpF2gPHFYK5OwZSy5EgNHxdwsHRgzwg/2ShzrOrYakK2HDoaExANdvkHqePz//p0Wug5rD4SWsC9C8tqfnTsHiMfmt71IcU+2/xQFYQHFFjsOp2gUf2lOHDsn7BcawH5zZg8eC9uDXoQNQ64t7g64m1QkrZQPFCTvGR3nEg/yKyQJKLathdIpdr0Q9q7fDOcUr/x8vS/HLNFH4EidTRNKN38zWM6rLNE6FWQD9xtt/MNqRKm164yMbp5Ixa+H7O5x4uMQ9dNrupBJa19U3wCjPykQefaXlN6zbocD2zla3Yh6eJvfJxaH56n/snzxdJ7YfenQVE1giyEcSFY4scHsvzLOUbtZbgJhW7/wJZ6PcyWHXKBaZVtu5qldscEfyYeHSGMUnUQfkkqv1m/j7W2aqCt2+naO0= proxmox" 
  },
  "vm-2" = {
    vm_username = "ubuntu"
    tags = ["vm-2", "test"]
    target_node = "proxmox" 
    vm_cores       = 1
    vm_memory    = 2048
    disk_size = 50
    disk_storage = "local-lvm"
    network_bridge = "vmbr0"
    ssh_public_keys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDD9lxp+h4WBx0Yj+94pv5/uBcC4El3E69a0+xiZ1qx3C4RVpHPIwWwOU5qLJUdZkcuCbPI1UNa5uj0T+rMG0yPgF85kC/xSpq6iRpF2gPHFYK5OwZSy5EgNHxdwsHRgzwg/2ShzrOrYakK2HDoaExANdvkHqePz//p0Wug5rD4SWsC9C8tqfnTsHiMfmt71IcU+2/xQFYQHFFjsOp2gUf2lOHDsn7BcawH5zZg8eC9uDXoQNQ64t7g64m1QkrZQPFCTvGR3nEg/yKyQJKLathdIpdr0Q9q7fDOcUr/x8vS/HLNFH4EidTRNKN38zWM6rLNE6FWQD9xtt/MNqRKm164yMbp5Ixa+H7O5x4uMQ9dNrupBJa19U3wCjPykQefaXlN6zbocD2zla3Yh6eJvfJxaH56n/snzxdJ7YfenQVE1giyEcSFY4scHsvzLOUbtZbgJhW7/wJZ6PcyWHXKBaZVtu5qldscEfyYeHSGMUnUQfkkqv1m/j7W2aqCt2+naO0= proxmox" 
  }
}