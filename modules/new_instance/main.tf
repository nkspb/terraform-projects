# Module to create new yandex cloud compute instances

terraform {
  required_version = "1.2.3"
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.75.0"
    }
  }
}

data "yandex_compute_image" "vm_image" {
  family = var.vm_family
}

resource "yandex_compute_instance" "compute_instance" {
  name = var.vm_name
  zone = var.vm_zone

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.vm_image.id
    }
  }

  network_interface {
    subnet_id = var.vm_subnet_id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file("/home/nkom/.ssh/id_rsa.pub")}"
  }
} 