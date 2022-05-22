locals {
  secrets   = yamldecode(file(var.variables_file))["secrets"]
  variables = yamldecode(file(var.variables_file))["variables"]
  workspace = yamldecode(file(var.variables_file))["workspace"]
}

resource "tfe_workspace" "workspace" {
  name                = data.sops_file.variables.data["workspace.name"]
  organization        = data.sops_file.variables.data["workspace.organization"]
  tag_names           = local.workspace["tag_names"]
  description         = data.sops_file.variables.data["workspace.description"]
  allow_destroy_plan  = data.sops_file.variables.data["workspace.allow_destroy_plan"]
  auto_apply          = data.sops_file.variables.data["workspace.auto_apply"]
  speculative_enabled = data.sops_file.variables.data["workspace.speculative_enabled"]
  terraform_version   = data.sops_file.variables.data["workspace.terraform_version"]
  vcs_repo {
    identifier     = data.sops_file.variables.data["workspace.identifier"]
    oauth_token_id = data.sops_file.variables.data["workspace.secrets.oauth_token_id"]
    branch         = data.sops_file.variables.data["workspace.branch"]
  }
}

data "sops_file" "variables" {
  source_file = var.variables_file
  input_type  = "yaml"
}


resource "tfe_variable" "terraform_variable" {
  for_each     = length(local.variables["terraform"]) == 0 ? toset([]) : toset([for k, v in local.variables["terraform"] : k])
  key          = each.key
  value        = jsonencode(yamldecode(data.sops_file.variables.raw).variables.terraform[each.key])
  category     = "terraform"
  workspace_id = tfe_workspace.workspace.id
  sensitive    = false
  hcl          = true
}

resource "tfe_variable" "terraform_secret" {
  for_each     = length(local.secrets["terraform"]) == 0 ? toset([]) : toset([for k, v in local.secrets["terraform"] : k])
  key          = each.key
  value        = jsonencode(yamldecode(data.sops_file.variables.raw).secrets.terraform[each.key])
  category     = "terraform"
  sensitive    = false
  workspace_id = tfe_workspace.workspace.id
  hcl          = true
}

resource "tfe_variable" "env_variable" {
  for_each     = length(local.variables["env"]) == 0 ? toset([]) : toset([for k, v in local.variables["env"] : k])
  key          = each.key
  value        = jsonencode(yamldecode(data.sops_file.variables.raw).variables.env[each.key])
  category     = "terraform"
  workspace_id = tfe_workspace.workspace.id
  sensitive    = false
}

resource "tfe_variable" "env_secret" {
  for_each     = length(local.secrets["env"]) == 0 ? toset([]) : toset([for k, v in local.secrets["env"] : k])
  key          = each.key
  value        = jsonencode(yamldecode(data.sops_file.variables.raw).secrets.env[each.key])
  category     = "env"
  sensitive    = false
  workspace_id = tfe_workspace.workspace.id
}
