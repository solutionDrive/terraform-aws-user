variable "iam_path" {
  default     = "/"
  description = "Path of where you want to create the IAM resource"
}

variable "force_destroy" {
  description = "When destroying this user, destroy even if it has non-Terraform-managed IAM access keys"
  default     = "false"
}

variable "gpg_key" {
  description = "Base64 encoded pgp key, see terraform documentation"
}

variable "user_name" {}
