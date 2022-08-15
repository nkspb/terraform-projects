terraform {
  required_version = "1.2.3"
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.75.0"
    }
  }

  backend "s3" {
    endpoint                    = "storage.yandexcloud.net"
    bucket                      = "nkom-state-bucket"
    region                      = "ru-central1"
    key                         = "state-1.tfstate"
    access_key                  = "access_key"
    secret_key                  = "secret_key"
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

provider "yandex" {
  token     = var.token
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.zone
}

resource "yandex_vpc_network" "network_1" {
  name        = "network_1"
  description = "Network for LEMP and LAMP servers"
}

resource "yandex_vpc_subnet" "network_1_subnet_1" {
  name           = "subnet_1"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.network_1.id
  v4_cidr_blocks = ["10.1.0.0/16"]
  description    = "Subnet for LEMP servers"
}


resource "yandex_vpc_subnet" "network_1_subnet_2" {
  name           = "subnet_2"
  zone           = "ru-central1-b"
  network_id     = yandex_vpc_network.network_1.id
  v4_cidr_blocks = ["10.2.0.0/16"]
  description    = "Subnet for LAMP servers"
}

module "new_instance_lemp" {
  source       = "./modules/new_instance"
  vm_name      = "lemp-vm"
  vm_zone      = "ru-central1-a"
  vm_family    = "lemp"
  vm_subnet_id = yandex_vpc_subnet.network_1_subnet_1.id
}

module "new_instance_lamp" {
  source       = "./modules/new_instance"
  vm_name      = "lamp-vm"
  vm_zone      = "ru-central1-b"
  vm_family    = "lamp"
  vm_subnet_id = yandex_vpc_subnet.network_1_subnet_2.id
}

# create load balancer target group
resource "yandex_lb_target_group" "web-servers" {
  name      = "web-servers-group"
  region_id = "ru-central1"

  target {
    subnet_id = yandex_vpc_subnet.network_1_subnet_1.id
    address   = module.new_instance_lemp.internal_ip
  }

  target {
    subnet_id = yandex_vpc_subnet.network_1_subnet_2.id
    address   = module.new_instance_lamp.internal_ip
  }

  description = "Load balancer target group for LEMP and LAMP servers"
}

# create load balancers
resource "yandex_lb_network_load_balancer" "load-balancer" {
  name = "web-servers-load-balancer"

  listener {
    name = "my-listener"
    port = 80
    external_address_spec {
      ip_version = "ipv4"
    }
  }

  attached_target_group {
    target_group_id = yandex_lb_target_group.web-servers.id

    healthcheck {
      name = "http"
      http_options {
        port = 80
        path = "/"
      }
    }
  }
  description = "Load balancer for LEMP and LAMP servers"
}