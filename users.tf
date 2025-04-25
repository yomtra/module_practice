#create users
resource "aws_iam_user" "users_1" {
  name = "system_admin_${count.index + 1}"
  count = var.users_1
}

resource "aws_iam_user" "users_2" {
  name = "database_admin_${count.index + 1}"
  count = var.users_2
}

resource "aws_iam_user" "users_3" {
  name = "read-only_${count.index + 1}"
  count = var.users_3
}

