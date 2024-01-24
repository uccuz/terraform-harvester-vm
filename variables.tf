variable "namespace" {
  type = string
  default = "default"
  description = "The namespace to deploy the resources to"
}

variable "username" {
  type = string
  default = "myuser"
  description = "The VM username"
}

variable "password" {
  type = string
  default = "myuser"
  description = "The VM password"
}