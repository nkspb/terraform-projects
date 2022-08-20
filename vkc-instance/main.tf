terraform {
  required_providers {
    openstack = {
      source = "terraform-provider-openstack/openstack"
      version = "1.48.0"
    }
  }
}

resource "openstack_compute_keypair_v2" "ssh" {
  name = "terraform_ssh_key"
  public_key = file("~/.ssh/id_rsa.pub")
}

module "security_group_1" {
  source = "./modules/new_security_group"
}

module "vm_instance_1" {
  source = "./modules/new_vm_instance"
  key_pair_name = openstack_compute_keypair_v2.ssh.name
  security_group_name = module.security_group_1.sec_group_rules_name
}