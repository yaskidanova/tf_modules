variable "instance_type" {
  description = "aws instance size or type"
  type        = string 
  default     = "t2.micro"
}

variable "env" {
  description = "environment"
  type = string
  default = "dev"
}

variable "ami" {
  description = "ami id"
  type = string
  default = "ami-04999cd8f2624f834"

}

variable "vpc_security_group_ids" {
  description = "security group id"
  type = list(string)
  
}

variable "ec2_name" {
  type = string
}

variable "user_data" {
  type = string
}



/// tags ///

variable "provider_name" {
  description = "Provider"
  type        = string
  default     = "aws"
}

variable "business_unit" {
  description = "Provider"
  type        = string
  default     = "orders"
}

variable "region" {
  description = "Provider region name"
  type        = string
  default     = "usw2"
}

variable "project" {
  description = "Project name"
  type        = string
  default     = "olala"
}

variable "tier" {
  description = "Application tier"
  type        = string
  default     = "db"
}

variable "team" {
  description = "Team name"
  type        = string
  default     = "DevOps"
}

variable "owner" {
  description = "Resource owner"
  type        = string
  default     = "iana"
}

variable "managed_by" {
  description = "Tool"
  type        = string
  default     = "terraform"
}