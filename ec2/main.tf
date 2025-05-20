resource "aws_instance" "main" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  user_data = var.user_data

  tags = merge(
    local.common_tags,
    {Name = replace(local.name, "rtype", "ec2")}
  )
}

