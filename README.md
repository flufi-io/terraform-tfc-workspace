# terraform-module-template

<!-- BEGIN_TF_DOCS -->
# Examples
```hcl
module "workspace" {
  source                  = "../../"
  name                    = var.name
  description             = var.description
  organization            = var.organization
  terraform_version       = var.terraform_version
  vcs_repo_identifier     = var.vcs_repo_identifier
  vcs_repo_oauth_token_id = var.vcs_repo_oauth_token_id
  vcs_repo_branch         = var.vcs_repo_branch
}
```

## Providers

| Name | Version |
|------|---------|
| <a name="provider_sops"></a> [sops](#provider\_sops) | 0.7.1 |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.31.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_destroy_plan"></a> [allow\_destroy\_plan](#input\_allow\_destroy\_plan) | Whether destroy plans can be queued on the workspace. | `bool` | `false` | no |
| <a name="input_auto_apply"></a> [auto\_apply](#input\_auto\_apply) | Whether to automatically apply changes when a Terraform plan is successful. | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the workspace | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the Workspace | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | Name of the Organization | `string` | n/a | yes |
| <a name="input_speculative_enabled"></a> [speculative\_enabled](#input\_speculative\_enabled) | Whether this workspace allows speculative plans. | `bool` | `false` | no |
| <a name="input_tag_names"></a> [tag\_names](#input\_tag\_names) | Tags for the workspace | `list(string)` | `[]` | no |
| <a name="input_terraform_version"></a> [terraform\_version](#input\_terraform\_version) | Terraform Version | `string` | n/a | yes |
| <a name="input_variables_file"></a> [variables\_file](#input\_variables\_file) | Path to the encrypted variables file | `string` | `"variables.enc.yml"` | no |
| <a name="input_vcs_repo_branch"></a> [vcs\_repo\_branch](#input\_vcs\_repo\_branch) | Repo Branch | `string` | `"main"` | no |
| <a name="input_vcs_repo_identifier"></a> [vcs\_repo\_identifier](#input\_vcs\_repo\_identifier) | Repository ORGANIZATION/Repository | `string` | n/a | yes |
| <a name="input_vcs_repo_oauth_token_id"></a> [vcs\_repo\_oauth\_token\_id](#input\_vcs\_repo\_oauth\_token\_id) | Oauth Token ID | `string` | n/a | yes |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_workspace_name"></a> [workspace\_name](#output\_workspace\_name) | n/a |
## Resources

- resource.tfe_variable.env_secret (main.tf#55)
- resource.tfe_variable.env_variable (main.tf#46)
- resource.tfe_variable.terraform_secret (main.tf#36)
- resource.tfe_variable.terraform_variable (main.tf#26)
- resource.tfe_workspace.workspace (main.tf#1)
- data source.sops_file.variables (main.tf#17)
<!-- END_TF_DOCS -->
