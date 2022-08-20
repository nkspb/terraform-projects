variable "volume_name" {
    description = "Name of the volume"
    type = string
    default = "storage_1"
}

variable "volume_type" {
    description = "Type of volume"
    type = string
    default = "dp1"
}

variable "volume_size" {
    description = "Volume size in GBs"
    type = string
    default = "10"
}

variable "volume_image_id" {
    description = "Image ID to use for the volume"
    type = string
    default = "cd733849-4922-4104-a280-9ea2c3145417" # Ubuntu-18.04-201910
}

variable "network_name" {
    description = "Name of the network to connect to"
    type = string
    default = "ext-net"
}

variable "key_pair_name" {
    description = "SSH key pair name"
    type = string
}

variable "security_group_name" {
    description = "Security group name"
    type = string
}