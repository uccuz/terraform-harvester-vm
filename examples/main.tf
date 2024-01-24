module "harvester_vm" {
  source = "../"

  namespace = "default"

  hostname = "ubuntu-vm"
  username = "myuser"
  password = "mypassword"

  vm_count = 1
  cpu = 2
  memory = "4Gi"
  disk_size = "30Gi"

  network = "harvester-public/mynetwork"
  image = "harvester-public/image-xxxxx"
  ssh_key = ""
  ssh_key_path = "~/.ssh/id_rsa.pub"
}