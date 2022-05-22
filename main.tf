resource "tfe_workspace" "workspace" {
  name                = var.name
  organization        = var.organization
  tag_names           = var.tag_names
  description         = var.description
  allow_destroy_plan  = var.allow_destroy_plan
  auto_apply          = var.auto_apply
  speculative_enabled = var.speculative_enabled
  terraform_version   = var.terraform_version
  vcs_repo {
    identifier     = var.vcs_repo_identifier
    oauth_token_id = var.vcs_repo_oauth_token_id
    branch         = var.vcs_repo_branch
  }
}

data "sops_file" "variables" {
  source_file = var.variables_file
  input_type  = "yaml"
}
locals {
  secrets   = yamldecode(file(var.variables_file))["secrets"]
  variables = yamldecode(file(var.variables_file))["variables"]
}

resource "tfe_variable" "terraform_variable" {
  for_each     = toset([for k, v in local.variables["terraform"] : k])
  key          = each.key
  value        = data.sops_file.variables.data["variables.terraform.${each.key}"]
  category     = "terraform"
  workspace_id = tfe_workspace.workspace.id
  sensitive    = false
  hcl          = true
}

resource "tfe_variable" "terraform_secret" {
  for_each     = toset([for k, v in local.secrets["terraform"] : k])
  key          = each.key
  value        = data.sops_file.variables.data["secrets.terraform.${each.key}"]
  category     = "terraform"
  sensitive    = true
  workspace_id = tfe_workspace.workspace.id
  hcl          = true
}

resource "tfe_variable" "env_variable" {
  for_each     = toset([for k, v in local.variables["env"] : k])
  key          = each.key
  value        = data.sops_file.variables.data["variables.env.${each.key}"]
  category     = "terraform"
  workspace_id = tfe_workspace.workspace.id
  sensitive    = false
}

resource "tfe_variable" "env_secret" {
  for_each     = toset([for k, v in local.secrets["env"] : k])
  key          = each.key
  value        = data.sops_file.variables.data["secrets.env.${each.key}"]
  category     = "env"
  sensitive    = true
  workspace_id = tfe_workspace.workspace.id
}
