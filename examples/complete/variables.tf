variable "name" {
  type        = string
  description = "Name of the Workspace"
}
variable "organization" {
  type        = string
  description = "Name of the Organization"
}
variable "description" {
  type        = string
  description = "Description of the workspace"
}
variable "terraform_version" {
  type        = string
  description = "Terraform Version"
}
variable "vcs_repo_identifier" {
  description = "Repository ORGANIZATION/Repository"
  type        = string
}
variable "vcs_repo_oauth_token_id" {
  type        = string
  sensitive   = true
  description = "Oauth Token ID"
}
variable "vcs_repo_branch" {
  default     = "main"
  description = "Repo Branch"
  type        = string
}
variable "tfe_token" {
  type        = string
  description = "Terraform Cloud Token"
}
