output "unique_id" {
  value = "${aws_iam_user.user.unique_id}"
}

output "arn" {
  value = "${aws_iam_user.user.arn}"
}

output "user_name" {
  value = "${aws_iam_user.user.name}"
}

output "password" {
  count = "${var.gpg_key != "" ? 1 : 0}"
  value = "${aws_iam_user_login_profile.user.encrypted_password}"
}
