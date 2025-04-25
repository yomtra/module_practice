#number of users you want to create
variable "users_1" {
  type = number
}

variable "users_2" {
  type = number
}

variable "users_3" {
  type = number
}

variable "users_1_name" {
  type = string
}

variable "users_2_name" {
  type = string
}

variable "users_3_name" {
  type = string
}

variable "group_1_name" {
  type = string
}

variable "group_2_name" {
  type = string
}

variable "group_3_name" {
  type = string
}

variable "group_1_policy_arn" {
  type = string
}

variable "group_2_policy_arn" {
  type = string
}

variable "group_3_policy_arn" {
  type = string
}

variable "min_pass_length" {
  type = string
}

variable "req_lower_char" {
  type = bool
}

variable "req_numbers" {
  type = bool
}
variable "req_upper_char" {
  type = bool
}

variable "req_symbols" {
  type = bool
}

variable "allow_pass_change" {
  type = bool
}