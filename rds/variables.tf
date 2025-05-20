variable "db_name" {
  type = string 
}

variable "engine" {
  type = string
}

variable "engine_version" {
  type = string
}

variable "instance_class" {
  type = string
}

variable "username" {
  type = string
}

variable "password" {
  type = string
}

variable "vpc_security_group_ids" {
  type = list(string)
}

variable "ssm_parameter_name" {
  type = string
}