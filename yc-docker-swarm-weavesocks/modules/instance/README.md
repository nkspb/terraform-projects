<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | 0.75.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | n/a |
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | 0.75.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [null_resource.docker-swarm-join-worker](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.docker-swarm-manager-get-token](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.install-docker-on-manager-init-swarm](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.install-docker-on-workers](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.weavesocks-deploy](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [yandex_compute_instance.vm-manager](https://registry.terraform.io/providers/yandex-cloud/yandex/0.75.0/docs/resources/compute_instance) | resource |
| [yandex_compute_instance.vm-worker](https://registry.terraform.io/providers/yandex-cloud/yandex/0.75.0/docs/resources/compute_instance) | resource |
| [yandex_compute_image.my_image](https://registry.terraform.io/providers/yandex-cloud/yandex/0.75.0/docs/data-sources/compute_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_id"></a> [cloud\_id](#input\_cloud\_id) | Cloud id for the project | `string` | `"X"` | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | Folder id for the project | `string` | `"X"` | no |
| <a name="input_instance_family_image"></a> [instance\_family\_image](#input\_instance\_family\_image) | Instance image | `string` | `"ubuntu-2004-lts"` | no |
| <a name="input_ssh_credentials"></a> [ssh\_credentials](#input\_ssh\_credentials) | Credentials for connect to instances | <pre>object({<br>    user        = string<br>    private_key = string<br>    pub_key     = string<br>  })</pre> | <pre>{<br>  "private_key": "~/.ssh/id_rsa",<br>  "pub_key": "~/.ssh/id_rsa.pub",<br>  "user": "ubuntu"<br>}</pre> | no |
| <a name="input_token"></a> [token](#input\_token) | Token to access cloud | `string` | `"X"` | no |
| <a name="input_vpc_subnet_id"></a> [vpc\_subnet\_id](#input\_vpc\_subnet\_id) | VPC subnet network id | `string` | n/a | yes |
| <a name="input_workers"></a> [workers](#input\_workers) | Count of worker nodes | `number` | `1` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | Availability zone for VM | `string` | `"ru-central1-a"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_external_ip_address_manager"></a> [external\_ip\_address\_manager](#output\_external\_ip\_address\_manager) | n/a |
| <a name="output_external_ip_address_worker"></a> [external\_ip\_address\_worker](#output\_external\_ip\_address\_worker) | n/a |
<!-- END_TF_DOCS -->