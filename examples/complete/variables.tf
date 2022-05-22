variable "tfe_token" {
  type        = string
  description = "Terraform Cloud Token"
}
variable "vcs_repo_oauth_token_id" {
  type        = string
  sensitive   = true
  description = "Oauth Token ID"
}
