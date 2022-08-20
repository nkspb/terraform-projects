terraform {
  required_providers {
    openstack = {
      source = "terraform-provider-openstack/openstack"
      version = "1.48.0"
    }
  }
}

resource "openstack_compute_secgroup_v2" "rules" {
  name = var.sec_group_name
  description = "Security group for terraform instance"

  rule {
    from_port = 22
    to_port = 22
    ip_protocol = "tcp"
    cidr = "0.0.0.0/0"
  }

  rule {
    from_port = 80
    to_port = 80
    ip_protocol = "tcp"
    cidr = "0.0.0.0/0"
  }

  rule {
    from_port = -1
    to_port = -1
    ip_protocol = "icmp"
    cidr = "0.0.0.0/0"
  }
}
