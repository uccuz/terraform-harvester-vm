variable "namespace" {
  type        = string
  default     = "default"
  description = "The namespace to deploy the resources to"
}

variable "hostname" {
  type        = string
  default     = "ubuntu-vm"
  description = "The VM hostname"
}


variable "username" {
  type        = string
  default     = "myuser"
  description = "The VM username"
  sensitive   = true
}

variable "password" {
  type        = string
  default     = "mypassword"
  description = "The VM password"
  sensitive   = true
}

variable "vm_count" {
  type        = number
  default     = 1
  description = "The number of VMs to deploy"
}

variable "cpu" {
  type        = number
  default     = 2
  description = "The number of CPUs to allocate to the VM"
}

variable "memory" {
  type        = string
  default     = "4Gi"
  description = "The amount of memory to allocate to the VM"
}

variable "disk_size" {
  type        = string
  default     = "30Gi"
  description = "The size of the disk to allocate to the VM"
}

variable "network" {
  type        = string
  default     = "harvester-public/your-network"
  description = "The network to deploy the VM to"
}

variable "image" {
  type        = string
  default     = "harvester-public/image-xxxxx"
  description = "The image to deploy the VM with"
}

variable "ssh_key" {
  type        = string
  default     = ""
  description = "The SSH key to use for the VM"
}

# If ssh_key is not provided, the ssh_key_path will be used
variable "ssh_key_path" {
  type        = string
  default     = "~/.ssh/id_rsa.pub"
  description = "The SSH key path to use for the VM"
}