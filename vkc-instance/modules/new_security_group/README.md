Create new Security group.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_openstack"></a> [openstack](#requirement\_openstack) | 1.48.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_openstack"></a> [openstack](#provider\_openstack) | 1.48.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [openstack_compute_secgroup_v2.rules](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/1.48.0/docs/resources/compute_secgroup_v2) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_sec_group_name"></a> [sec\_group\_name](#input\_sec\_group\_name) | Name of Security group create | `string` | `"vms_security_group"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sec_group_rules_name"></a> [sec\_group\_rules\_name](#output\_sec\_group\_rules\_name) | n/a |