resource "aws_iam_user" "user" {
  name          = "${var.user_name}"
  path          = "${var.iam_path}"
  force_destroy = "${var.force_destroy}"
}

resource "aws_iam_user_login_profile" "user" {
  pgp_key = "${var.gpg_key}"
  user = "${aws_iam_user.user.name}"
}
