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
