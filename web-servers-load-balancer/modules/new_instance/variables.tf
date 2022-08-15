# Name of the VM to create
variable "vm_name" {
  type        = string
  description = "Name of VM to create"
}

variable "vm_zone" {
  type        = string
  description = "Zone to place VM in"
}

variable "vm_family" {
  type        = string
  description = "Instance image"
}

variable "vm_subnet_id" {
  type        = string
  description = "VPC subnet id to connect VM to"
}