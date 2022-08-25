Create a new VM.

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
| [openstack_blockstorage_volume_v2.volume_1](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/1.48.0/docs/resources/blockstorage_volume_v2) | resource |
| [openstack_compute_instance_v2.instance](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/1.48.0/docs/resources/compute_instance_v2) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_key_pair_name"></a> [key\_pair\_name](#input\_key\_pair\_name) | SSH key pair name | `string` | n/a | yes |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | Name of the network to connect to | `string` | `"ext-net"` | no |
| <a name="input_security_group_name"></a> [security\_group\_name](#input\_security\_group\_name) | Security group name | `string` | n/a | yes |
| <a name="input_volume_image_id"></a> [volume\_image\_id](#input\_volume\_image\_id) | Image ID to use for the volume | `string` | `"cd733849-4922-4104-a280-9ea2c3145417"` | no |
| <a name="input_volume_name"></a> [volume\_name](#input\_volume\_name) | Name of the volume | `string` | `"storage_1"` | no |
| <a name="input_volume_size"></a> [volume\_size](#input\_volume\_size) | Volume size in GBs | `string` | `"10"` | no |
| <a name="input_volume_type"></a> [volume\_type](#input\_volume\_type) | Type of volume | `string` | `"dp1"` | no |

## Outputs

No outputs.