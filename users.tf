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

resource "aws_iam_account_password_policy" "strict" {
  minimum_password_length        = var.min_pass_length
  require_lowercase_characters   = var.req_lower_char
  require_numbers                = var.req_numbers
  require_uppercase_characters   = var.req_upper_char
  require_symbols                = var.req_symbols
  allow_users_to_change_password = var.allow_pass_change
}
