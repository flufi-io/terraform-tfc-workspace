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
