variable "zone" {
  description = "Availability zone for VM"
  type        = string
  default     = "ru-central1-a"
}

variable "folder_id" {
  description = "Folder id for the project"
  type        = string
  default     = "b1g8r60gb2fi173laerp"
}

variable "cloud_id" {
  description = "Cloud id for the project"
  type        = string
  default     = "b1gr35fn61cc9vla5hls"
}

variable "token" {
  description = "Token to access cloud"
  type        = string
  default     = "token"
}