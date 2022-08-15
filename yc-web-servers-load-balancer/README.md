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

| Name | Source | Version |
|------|--------|---------|
| <a name="module_new_instance_lamp"></a> [new\_instance\_lamp](#module\_new\_instance\_lamp) | ./modules/new_instance | n/a |
| <a name="module_new_instance_lemp"></a> [new\_instance\_lemp](#module\_new\_instance\_lemp) | ./modules/new_instance | n/a |

## Resources

| Name | Type |
|------|------|
| [yandex_lb_network_load_balancer.load-balancer](https://registry.terraform.io/providers/yandex-cloud/yandex/0.75.0/docs/resources/lb_network_load_balancer) | resource |
| [yandex_lb_target_group.web-servers](https://registry.terraform.io/providers/yandex-cloud/yandex/0.75.0/docs/resources/lb_target_group) | resource |
| [yandex_vpc_network.network_1](https://registry.terraform.io/providers/yandex-cloud/yandex/0.75.0/docs/resources/vpc_network) | resource |
| [yandex_vpc_subnet.network_1_subnet_1](https://registry.terraform.io/providers/yandex-cloud/yandex/0.75.0/docs/resources/vpc_subnet) | resource |
| [yandex_vpc_subnet.network_1_subnet_2](https://registry.terraform.io/providers/yandex-cloud/yandex/0.75.0/docs/resources/vpc_subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_id"></a> [cloud\_id](#input\_cloud\_id) | Cloud id for the project | `string` | `"b1gr35fn61cc9vla5hls"` | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | Folder id for the project | `string` | `"b1g8r60gb2fi173laerp"` | no |
| <a name="input_token"></a> [token](#input\_token) | Token to access cloud | `string` | `"token"` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | Availability zone for VM | `string` | `"ru-central1-a"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_external_ip_lamp_vm"></a> [external\_ip\_lamp\_vm](#output\_external\_ip\_lamp\_vm) | n/a |
| <a name="output_external_ip_lemp_vm"></a> [external\_ip\_lemp\_vm](#output\_external\_ip\_lemp\_vm) | n/a |
| <a name="output_internal_ip_lamp_vm"></a> [internal\_ip\_lamp\_vm](#output\_internal\_ip\_lamp\_vm) | n/a |
| <a name="output_internal_ip_lemp_vm"></a> [internal\_ip\_lemp\_vm](#output\_internal\_ip\_lemp\_vm) | n/a |
| <a name="output_load_balancer_external_ip"></a> [load\_balancer\_external\_ip](#output\_load\_balancer\_external\_ip) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->