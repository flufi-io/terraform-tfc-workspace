# terraform-module-template

<!-- BEGIN_TF_DOCS -->
# Examples
```markdown
# Complete

```terraform
module "workspace" {
  source         = "flufi-io/workspace/tfc"
  version        = "0.0.7"
  variables_file = "variables.enc.yml"
}
```

```yaml
# variables.yml
workspace:
  name: terraform-dummy-workspace
  organization: flufi
  tag_names:
    - test
    - terraform
  description: dummy workspace
  identifier: flufi-io/terraform-dummy-repo
  branch: main
  allow_destroy_plan: false
  auto_apply: false
  speculative_enabled: false
  terraform_version: 1.2.0
  secrets:
    oauth_token_id: DUMMY_TOKEN

variables:
  env:
    ENVIRONMENT_VARIABLE: DUMMY_VALUE
    ENVIRONMENT_VARIABLE_LIST:
      -item1
      -item2
    ENVIRONMENT_VARIABLE_MAP:
      key1: value1
      key2: value2
  terraform:
    terraform_variable: dummy_value
    terraform_list:
      - item1
      - item2
    terraform_map:
      key1: value1
      key2: value2
secrets:
  env:
    ENVIRONMENT_SCRET: DUMMY_SCRET
    ENVIRONMENT_SECRT_LIST:
      - item1
      - item2
    ENVIRONMENT_SCRT_MAP:
      key1: value1
      key2: value2
  terraform:
    terraform_scrt: dummy_secrt
    scret_list:
      - item1
      - item2
    secrt_map:
      key1: value1
      key2: value2
```

```yaml
# variables.enc.yml
workspace:
  name: terraform-dummy-workspace
  organization: flufi
  tag_names:
    - test
    - terraform
  description: dummy workspace
  identifier: flufi-io/terraform-github-repositories
  branch: main
  allow_destroy_plan: false
  auto_apply: false
  speculative_enabled: false
  terraform_version: 1.2.0
  secrets:
    oauth_token_id: ENC[AES256_GCM,data:u+u7T0WrXBvOUhHaP/wxrAhA==,iv:0cQYHzVTlBie50f3ppkyNoUl9laBh+4o4BPvDkhk4=,tag:XY5wiY+F84x3fuAw9CAU8g==,type:str]
variables:
  env:
    ENVIRONMENT_VARIABLE: DUMMY_VALUE
    ENVIRONMENT_VARIABLE_LIST: -item1 -item2
    ENVIRONMENT_VARIABLE_MAP:
      key1: value1
      key2: value2
  terraform:
    terraform_variable: dummy_value
    terraform_list:
      - item1
      - item2
    terraform_map:
      key1: value1
      key2: value2
secrets:
  env:
    ENVIRONMENT_SCRET: ENC[AES256_GCM,data:O2zDwv2Pn6uDiYo=,iv:b6yWTRqjxjfMFEb0UGMstWdYugCQHiMgCiDFRP1fa9I=,tag:9I1A/ZLxZ6T45KrpEvqhdA==,type:str]
    ENVIRONMENT_SECRT_LIST:
      - ENC[AES256_GCM,data:QYXe0AE=,iv:eM2ui5PcSaIsWdfqKNsi6m1jO7cUi1WAaxE03YgWURc=,tag:4+M04EiThi70CYW1JXkNjA==,type:str]
      - ENC[AES256_GCM,data:xA4nzN4=,iv:Eeq+QlVxuq2kTISDuLstD0MhovdP2gUxkvoOGBltn6U=,tag:ARzuBUH+WOLL5esze7xpyw==,type:str]
    ENVIRONMENT_SCRT_MAP:
      key1: ENC[AES256_GCM,data:G6sb9i8R,iv:T17Rn/eVCSqs98ssKyKAVAy7eHDY1LTC12c9KhnqHXs=,tag:wcIDGoBO0gpJ061p0okbpg==,type:str]
      key2: ENC[AES256_GCM,data:rn2b6SSi,iv:reCGonjO6Z9uLfIbgQWkR4DGG0YbjQdwFDOB/kqhFlo=,tag:xe95AaNmc16Dvtt1+rDKiw==,type:str]
  terraform:
    terraform_scrt: ENC[AES256_GCM,data:u1HiWSHD8NoTOhM=,iv:zpzLEt6oYgtnNHmddzyIlYNbeFhZpTjkjVXjGJNn4jk=,tag:JV38cl0S/zSPzyk7xFB7zQ==,type:str]
    scret_list:
      - ENC[AES256_GCM,data:OKRhcvo=,iv:2LYoBmhMRzT6D04W2Rybhq4BAeHgQSpvE2U+E4re5EQ=,tag:aQm1JiEhc3KKxHgF7S86JA==,type:str]
      - ENC[AES256_GCM,data:DewLmGs=,iv:pjthpFlJPD68jBoxd96YqWd23k8+mQFYgsKAMx6XZc4=,tag:2e6sH0DZXlFvaX4PVeCgXA==,type:str]
    secrt_map:
      key1: ENC[AES256_GCM,data:cj17QspI,iv:lLGGBDhJcOthS3Bcb6qButdPazSIGO/jKHjlWSqDjxk=,tag:dyL4dm5vM01LnQezCsb/gQ==,type:str]
      key2: ENC[AES256_GCM,data:zdh+kRdJ,iv:7qLGh5ihv/DnW7WKleEU8t3dzBy26KcutUWuNqyTguA=,tag:nDf2UxgmNRjbnXmcXqHx2g==,type:str]
sops:
  kms: []
  gcp_kms: []
  azure_kv: []
  hc_vault: []
  age: []
  lastmodified: "2022-05-22T08:18:31Z"
  mac: ENC[AES256_GCM,data:1IvIHlrNpzoYuHIhQFM+qR2o8j7zwvDjfDFUoKNVwJpFBaalGXnZI+oI2FiH/p409S3otswf7E8WqepCbdsGTmTaB5Li8YF33F6qWDhxIRmiM9CeN8J0eB/dtN2t9tlYf7o3hLeRzoCRLxGy6Kmi3bVqTlEilKxS6XEOdf9ao/Q=,iv:S86FlEnL/bcQdWaYotMBgRJq8bgo+vW7+sj0iC8wo3I=,tag:3AlIj0azrRnWCh7Qu39EgQ==,type:str]
  pgp:
    - created_at: "2022-05-22T08:18:30Z"
      enc: |
        -----BEGIN PGP MESSAGE-----

        hQEMAyUpShfNkFB/AQgAgE3GDZVsBoZn7KKpkjAoexKOuU7EkiHYYJUnGXckarrV
        rJjgUOorz2hlc9jp7oHcT9NWQBnbLnuNfDFms8NqDaejOLhm/MWLl0SPWCS3XIia
        iKk7cczcKV3iXbOg2uP868SlsnGIgwfDcjSPWjtH047ZRxW7SGisc5zkVx8/Obx7
        qp9Wky5cT7nKwKbLhEE7Nm/bJNUCTMMe+GnQ0PDyT9oBT5cM5+FMIsisGJXbz2fS
        Cb+qGM32vzcQhL5J2OERAOmyKDtRb93mMHGFsgx6uFfKpAD1v8CCUU9UQVGKZ/em
        5htLNxlYjn7p/e8sBcRKUiPipojWzforg10Ml7GMoNJeAa8wS8n897hbfmVJrq2Q
        ACGPGOeLXVl0tGWnuJp0ECHbVri4PxlDtUkEsf4hZXuinhe7clXMwACs3ysZzNud
        5J+wda1jZsVWZhdMu3sXmFbbvXF0eblMYduu3mgmDg==
        =SOd3
        -----END PGP MESSAGE-----
      fp: FBC7B9E2A4F9289AC0C1D4843D16CEE4A27381B4
  encrypted_regex: ^(secrets)$
  version: 3.7.3
```

```yaml
# .sops.yaml
creation_rules:
  - pgp: FBC7B9E2A4F93D16CEE4A27381B4
    encrypted_regex: '^(secrets|workspace.secrets)$'
```

# How to encrypt the variables
```shell
sops -e variables.yml > variables.enc.yml
```

# How to decrypt the variables
```shell
sops -d variables.enc.yml > variables.yml
```
```

## Providers

| Name | Version |
|------|---------|
| <a name="provider_sops"></a> [sops](#provider\_sops) | 0.7.1 |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.31.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_variables_file"></a> [variables\_file](#input\_variables\_file) | Path to the encrypted variables file | `string` | `"variables.enc.yml"` | no |

## Resources

- resource.tfe_variable.env_secret (main.tf#58)
- resource.tfe_variable.env_variable (main.tf#49)
- resource.tfe_variable.terraform_secret (main.tf#39)
- resource.tfe_variable.terraform_variable (main.tf#29)
- resource.tfe_workspace.workspace (main.tf#7)
- data source.sops_file.variables (main.tf#23)
<!-- END_TF_DOCS -->
```

## Providers

| Name | Version |
|------|---------|
| <a name="provider_sops"></a> [sops](#provider\_sops) | 0.7.1 |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.31.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_variables_file"></a> [variables\_file](#input\_variables\_file) | Path to the encrypted variables file | `string` | `"variables.enc.yml"` | no |

## Resources

- resource.tfe_variable.env_secret (main.tf#58)
- resource.tfe_variable.env_variable (main.tf#49)
- resource.tfe_variable.terraform_secret (main.tf#39)
- resource.tfe_variable.terraform_variable (main.tf#29)
- resource.tfe_workspace.workspace (main.tf#7)
- data source.sops_file.variables (main.tf#23)
<!-- END_TF_DOCS -->
```

## Providers

| Name | Version |
|------|---------|
| <a name="provider_sops"></a> [sops](#provider\_sops) | 0.7.1 |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.31.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_variables_file"></a> [variables\_file](#input\_variables\_file) | Path to the encrypted variables file | `string` | `"variables.enc.yml"` | no |

## Resources

- resource.tfe_variable.env_secret (main.tf#58)
- resource.tfe_variable.env_variable (main.tf#49)
- resource.tfe_variable.terraform_secret (main.tf#39)
- resource.tfe_variable.terraform_variable (main.tf#29)
- resource.tfe_workspace.workspace (main.tf#7)
- data source.sops_file.variables (main.tf#23)
<!-- END_TF_DOCS -->
```

## Providers

| Name | Version |
|------|---------|
| <a name="provider_sops"></a> [sops](#provider\_sops) | 0.7.1 |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.31.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_variables_file"></a> [variables\_file](#input\_variables\_file) | Path to the encrypted variables file | `string` | `"variables.enc.yml"` | no |

## Resources

- resource.tfe_variable.env_secret (main.tf#58)
- resource.tfe_variable.env_variable (main.tf#49)
- resource.tfe_variable.terraform_secret (main.tf#39)
- resource.tfe_variable.terraform_variable (main.tf#29)
- resource.tfe_workspace.workspace (main.tf#7)
- data source.sops_file.variables (main.tf#23)
<!-- END_TF_DOCS -->
```

## Providers

| Name | Version |
|------|---------|
| <a name="provider_sops"></a> [sops](#provider\_sops) | 0.7.1 |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.31.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_variables_file"></a> [variables\_file](#input\_variables\_file) | Path to the encrypted variables file | `string` | `"variables.enc.yml"` | no |

## Resources

- resource.tfe_variable.env_secret (main.tf#58)
- resource.tfe_variable.env_variable (main.tf#49)
- resource.tfe_variable.terraform_secret (main.tf#39)
- resource.tfe_variable.terraform_variable (main.tf#29)
- resource.tfe_workspace.workspace (main.tf#7)
- data source.sops_file.variables (main.tf#23)
<!-- END_TF_DOCS -->
```

## Providers

| Name | Version |
|------|---------|
| <a name="provider_sops"></a> [sops](#provider\_sops) | 0.7.1 |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.31.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_variables_file"></a> [variables\_file](#input\_variables\_file) | Path to the encrypted variables file | `string` | `"variables.enc.yml"` | no |

## Resources

- resource.tfe_variable.env_secret (main.tf#58)
- resource.tfe_variable.env_variable (main.tf#49)
- resource.tfe_variable.terraform_secret (main.tf#39)
- resource.tfe_variable.terraform_variable (main.tf#29)
- resource.tfe_workspace.workspace (main.tf#7)
- data source.sops_file.variables (main.tf#23)
<!-- END_TF_DOCS -->
```

## Providers

| Name | Version |
|------|---------|
| <a name="provider_sops"></a> [sops](#provider\_sops) | 0.7.1 |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.31.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_variables_file"></a> [variables\_file](#input\_variables\_file) | Path to the encrypted variables file | `string` | `"variables.enc.yml"` | no |

## Resources

- resource.tfe_variable.env_secret (main.tf#58)
- resource.tfe_variable.env_variable (main.tf#49)
- resource.tfe_variable.terraform_secret (main.tf#39)
- resource.tfe_variable.terraform_variable (main.tf#29)
- resource.tfe_workspace.workspace (main.tf#7)
- data source.sops_file.variables (main.tf#23)
<!-- END_TF_DOCS -->
