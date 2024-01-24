resource "harvester_cloudinit_secret" "cloud-config" {
  name      = "cloud-config"
  namespace = var.namespace

  user_data = <<-EOF
    #cloud-config
    user: ${var.username}
    password: ${var.password}
    chpasswd: {expire: False}
    ssh_pwauth: True
    package_update: true
    packages:
      - qemu-guest-agent
    runcmd:
      - - systemctl
        - enable
        - '--now'
        - qemu-guest-agent
    ssh_authorized_keys:
      - >-
        ${var.ssh_key != "" ? var.ssh_key : file(var.ssh_key_path)}
    EOF

  network_data = <<-EOF
    #network-config
    network:
      version: 1
      config:
        - type: physical
          name: enp1s0
          subnets:
            - type: dhcp
  EOF
}