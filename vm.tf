resource "harvester_virtualmachine" "virtualmachine" {
  count     = var.vm_count
  name      = "${var.hostname}-${count.index}"
  namespace = var.namespace

  description = "harvester virtualmachine"

  cpu    = var.cpu
  memory = var.memory

  efi         = true
  secure_boot = false

  hostname = var.hostname

  network_interface {
    name           = "nic-1"
    network_name   = var.network
    wait_for_lease = true
  }

  disk {
    name       = "rootdisk"
    type       = "disk"
    size       = var.disk_size
    bus        = "virtio"
    boot_order = 1

    image       = var.image
    auto_delete = true
  }

  cloudinit {
    user_data_secret_name    = harvester_cloudinit_secret.cloud-config.name
    network_data_secret_name = harvester_cloudinit_secret.cloud-config.name
  }
}