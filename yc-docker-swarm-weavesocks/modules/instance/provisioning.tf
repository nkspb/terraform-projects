resource "null_resource" "install-docker-on-manager-init-swarm" {
  depends_on = [yandex_compute_instance.vm-manager]
  connection {
    user        = var.ssh_credentials.user
    private_key = file(var.ssh_credentials.private_key)
    host        = yandex_compute_instance.vm-manager.network_interface.0.nat_ip_address
  }

  provisioner "remote-exec" {
    script = "scripts/install-docker-swarm.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "docker swarm init"
    ]
  }
}

resource "null_resource" "install-docker-on-workers" {
  count = var.workers
  depends_on = [yandex_compute_instance.vm-worker]
  connection {
    user        = var.ssh_credentials.user
    private_key = file(var.ssh_credentials.private_key)
    host        = yandex_compute_instance.vm-worker[count.index].network_interface.0.nat_ip_address
  }

  provisioner "remote-exec" {
    script = "scripts/install-docker-swarm.sh"
  }
}

resource "null_resource" "docker-swarm-manager-get-token" {
  depends_on = [null_resource.install-docker-on-manager-init-swarm]

  connection {
    user        = var.ssh_credentials.user
    private_key = file(var.ssh_credentials.private_key)
    host        = yandex_compute_instance.vm-manager.network_interface.0.nat_ip_address
  }

  provisioner "local-exec" {
    command = "TOKEN=$(ssh -i ${var.ssh_credentials.private_key} -o StrictHostKeyChecking=no ${var.ssh_credentials.user}@${yandex_compute_instance.vm-manager.network_interface.0.nat_ip_address} docker swarm join-token -q worker); echo \"#!/usr/bin/env bash\nsudo docker swarm join --token $TOKEN ${yandex_compute_instance.vm-manager.network_interface.0.nat_ip_address}:2377\nexit 0\" >| scripts/join.sh"
  }
}

resource "null_resource" "docker-swarm-join-worker" {
  count = var.workers
  depends_on = [null_resource.docker-swarm-manager-get-token, null_resource.install-docker-on-workers]
  connection {
    user        = var.ssh_credentials.user
    private_key = file(var.ssh_credentials.private_key)
    host        = yandex_compute_instance.vm-worker[count.index].network_interface.0.nat_ip_address
  }

  provisioner "remote-exec" {
    script = "scripts/join.sh"
  }
}

resource "null_resource" "weavesocks-deploy" {
  depends_on = [null_resource.install-docker-on-manager-init-swarm]
  connection {
    user        = var.ssh_credentials.user
    private_key = file(var.ssh_credentials.private_key)
    host        = yandex_compute_instance.vm-manager.network_interface.0.nat_ip_address
  }

  provisioner "file" {
    source = "scripts/weavesocks-swarm.yaml"
    destination = "/tmp/weavesocks-swarm.yaml"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/weavesocks-swarm.yaml",
      "docker stack deploy -c /tmp/weavesocks-swarm.yaml weavesocks"
    ]
  }
}

