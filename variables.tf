#variable "name" {
#  type        = string
#  description = "Name of the Workspace"
#}
#variable "organization" {
#  type        = string
#  description = "Name of the Organization"
#}
#variable "tag_names" {
#  default     = []
#  type        = list(string)
#  description = "Tags for the workspace"
#}
#variable "description" {
#  type        = string
#  description = "Description of the workspace"
#}
#variable "allow_destroy_plan" {
#  default     = false
#  type        = bool
#  description = "Whether destroy plans can be queued on the workspace."
#}
#variable "auto_apply" {
#  default     = false
#  type        = bool
#  description = "Whether to automatically apply changes when a Terraform plan is successful. "
#}
#variable "speculative_enabled" {
#  type        = bool
#  default     = false
#  description = "Whether this workspace allows speculative plans. "
#}
#variable "terraform_version" {
#  type        = string
#  description = "Terraform Version"
#}
#variable "vcs_repo_identifier" {
#  description = "Repository ORGANIZATION/Repository"
#  type        = string
#}
#variable "vcs_repo_oauth_token_id" {
#  type        = string
#  sensitive   = true
#  description = "Oauth Token ID"
#}
#variable "vcs_repo_branch" {
#  default     = "main"
#  description = "Repo Branch"
#  type        = string
#}

variable "variables_file" {
  default     = "variables.enc.yml"
  type        = string
  description = "Path to the encrypted variables file"
}
