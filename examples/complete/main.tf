module "workspace" {
  source                  = "../../"
  variables_file          = "variables.enc.yml"
  vcs_repo_oauth_token_id = var.vcs_repo_oauth_token_id
}
