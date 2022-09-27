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