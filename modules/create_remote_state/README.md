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
| [yandex_iam_service_account.sa](https://registry.terraform.io/providers/yandex-cloud/yandex/0.75.0/docs/resources/iam_service_account) | resource |
| [yandex_iam_service_account_static_access_key.sa-static-key](https://registry.terraform.io/providers/yandex-cloud/yandex/0.75.0/docs/resources/iam_service_account_static_access_key) | resource |
| [yandex_resourcemanager_folder_iam_member.sa-editor](https://registry.terraform.io/providers/yandex-cloud/yandex/0.75.0/docs/resources/resourcemanager_folder_iam_member) | resource |
| [yandex_storage_bucket.nkom-state-bucket](https://registry.terraform.io/providers/yandex-cloud/yandex/0.75.0/docs/resources/storage_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_id"></a> [cloud\_id](#input\_cloud\_id) | Cloud id for the project | `string` | `"b1gr35fn61cc9vla5hls"` | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | Folder id for the project | `string` | `"b1g8r60gb2fi173laerp"` | no |
| <a name="input_token"></a> [token](#input\_token) | Token to access the cloud | `string` | `"token"` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | Use specific availability zone | `string` | `"ru-central1-a"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sa_access_key"></a> [sa\_access\_key](#output\_sa\_access\_key) | n/a |
| <a name="output_sa_secret_key"></a> [sa\_secret\_key](#output\_sa\_secret\_key) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->