# terraform-module-template

<!-- BEGIN_TF_DOCS -->
# Examples
```hcl
module "workspace" {
  source                  = "../../"
  variables_file          = "variables.enc.yml"
  vcs_repo_oauth_token_id = var.vcs_repo_oauth_token_id
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
| <a name="input_variables_file"></a> [variables\_file](#input\_variables\_file) | Path to the encrypted variables file | `string` | `"variables.enc.yml"` | no |
| <a name="input_vcs_repo_oauth_token_id"></a> [vcs\_repo\_oauth\_token\_id](#input\_vcs\_repo\_oauth\_token\_id) | Oauth Token ID | `string` | n/a | yes |

## Resources

- resource.tfe_variable.env_secret (main.tf#58)
- resource.tfe_variable.env_variable (main.tf#49)
- resource.tfe_variable.terraform_secret (main.tf#39)
- resource.tfe_variable.terraform_variable (main.tf#29)
- resource.tfe_workspace.workspace (main.tf#7)
- data source.sops_file.variables (main.tf#23)
<!-- END_TF_DOCS -->
