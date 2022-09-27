variable "zone" {
  description = "Availability zone for VM"
  type        = string
  default     = "ru-central1-a"
}

variable "folder_id" {
  description = "Folder id for the project"
  type        = string
  default     = "X"
}

variable "cloud_id" {
  description = "Cloud id for the project"
  type        = string
  default     = "X"
}

variable "token" {
  description = "Token to access cloud"
  type        = string
  default     = "X"
}

variable "workers" {
  description = "Count of worker nodes"
  type        = number
  default     = 1
}

variable "instance_family_image" {
  description = "Instance image"
  type        = string
  default     = "ubuntu-2004-lts"
}

variable "vpc_subnet_id" {
  description = "VPC subnet network id"
  type        = string
}

variable "ssh_credentials" {
  description = "Credentials for connect to instances"
  type        = object({
    user        = string
    private_key = string
    pub_key     = string
  })
  
  default     = {
    user        = "ubuntu"
    private_key = "~/.ssh/id_rsa"
    pub_key     = "~/.ssh/id_rsa.pub"
  }
}