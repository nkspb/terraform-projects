terraform {
  required_providers {
    openstack = {
      source = "terraform-provider-openstack/openstack"
      version = "1.48.0"
    }
  }
}

resource "openstack_compute_instance_v2" "instance" {

  name = "terraform"

  image_name = "Ubuntu-18.04-201910"
  image_id = "cd733849-4922-4104-a280-9ea2c3145417"

  flavor_name = "Basic-1-1-10"
  key_pair = var.key_pair_name

  # Указываем, что при создании использовать config drive
  # Без этой опции ВМ не будет создана корректно в сетях без DHCP
  config_drive = true

  security_groups = [

  ]

  # В данном примере используется сеть ext-net
  network {
    name = var.network_name
  }

  # Блочное устройство
  block_device {
    uuid = openstack_blockstorage_volume_v2.volume_1.id
    boot_index = 0
    source_type = "volume"
    destination_type = "volume"
    delete_on_termination = true
  }
}

resource "openstack_blockstorage_volume_v2" "volume_1" {
  name = var.volume_name
  volume_type = var.volume_type
  size = var.volume_size
  image_id = var.volume_image_id
}