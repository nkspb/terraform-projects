<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | 0.75.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | 0.75.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_swarm_cluster"></a> [swarm\_cluster](#module\_swarm\_cluster) | ./modules/instance | n/a |

## Resources

| Name | Type |
|------|------|
| [yandex_vpc_network.swarm-network](https://registry.terraform.io/providers/yandex-cloud/yandex/0.75.0/docs/resources/vpc_network) | resource |
| [yandex_vpc_subnet.swarm-subnet](https://registry.terraform.io/providers/yandex-cloud/yandex/0.75.0/docs/resources/vpc_subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_id"></a> [cloud\_id](#input\_cloud\_id) | Cloud id for the project | `string` | `"X"` | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | Folder id for the project | `string` | `"X"` | no |
| <a name="input_token"></a> [token](#input\_token) | Token to access cloud | `string` | `"X"` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | Availability zone for VM | `string` | `"ru-central1-a"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_external_ip_address_manager"></a> [external\_ip\_address\_manager](#output\_external\_ip\_address\_manager) | n/a |
| <a name="output_external_ip_address_worker"></a> [external\_ip\_address\_worker](#output\_external\_ip\_address\_worker) | n/a |
<!-- END_TF_DOCS -->