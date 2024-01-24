output "vm_ip" {
  value = harvester_virtualmachine.virtualmachine[*].network_interface[0].ip_address
}