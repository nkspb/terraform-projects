<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.2.3 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | 0.75.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | 0.75.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_compute_instance.compute_instance](https://registry.terraform.io/providers/yandex-cloud/yandex/0.75.0/docs/resources/compute_instance) | resource |
| [yandex_compute_image.vm_image](https://registry.terraform.io/providers/yandex-cloud/yandex/0.75.0/docs/data-sources/compute_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vm_family"></a> [vm\_family](#input\_vm\_family) | Instance image | `string` | n/a | yes |
| <a name="input_vm_name"></a> [vm\_name](#input\_vm\_name) | Name of VM to create | `string` | n/a | yes |
| <a name="input_vm_subnet_id"></a> [vm\_subnet\_id](#input\_vm\_subnet\_id) | VPC subnet id to connect VM to | `string` | n/a | yes |
| <a name="input_vm_zone"></a> [vm\_zone](#input\_vm\_zone) | Zone to place VM in | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_external_ip"></a> [external\_ip](#output\_external\_ip) | n/a |
| <a name="output_internal_ip"></a> [internal\_ip](#output\_internal\_ip) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->