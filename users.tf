#create users
resource "aws_iam_user" "users_1" {
  name = "${var.users_1_name}_${count.index + 1}"
  count = var.users_1
}

resource "aws_iam_user" "users_2" {
  name = "${var.users_2_name}_${count.index + 1}"
  count = var.users_2
}

resource "aws_iam_user" "users_3" {
  name = "${var.users_3_name}_${count.index + 1}"
  count = var.users_3
}

