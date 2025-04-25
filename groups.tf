#create groups
resource "aws_iam_group" "group_1" {
  name = var.group_1_name
}

resource "aws_iam_group" "group_2" {
  name = var.group_2_name
}

resource "aws_iam_group" "group_3" {
  name = var.group_3_name
}

#create membership
resource "aws_iam_group_membership" "group_1" {
  name = var.group_1_name
  users = aws_iam_user.system_admin[*].name
  group = aws_iam_group.group_1.name
}

resource "aws_iam_group_membership" "group_2" {
  name = var.group_2_name
  users = aws_iam_user.database_admin[*].name
  group = aws_iam_group.group_2.name
}

resource "aws_iam_group_membership" "group_3" {
  name = var.group_3_name
  users = aws_iam_user.read_only[*].name
  group = aws_iam_group.group_3.name
}

#group permissions
resource "aws_iam_group_policy_attachment" "group_1" {
  group      = aws_iam_group.group_1.name
  policy_arn = var.group_1_policy_arn
}

resource "aws_iam_group_policy_attachment" "group_2" {
  group      = aws_iam_group.group_2.name
  policy_arn = var.group_2_policy_arn
}

resource "aws_iam_group_policy_attachment" "group_3" {
  group      = aws_iam_group.group_3.name
  policy_arn = var.group_3_policy_arn
}