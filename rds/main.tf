resource "aws_db_instance" "wordpress" {
  allocated_storage    = 10
  db_name              = var.db_name
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  username             = var.username
  password             = var.password
  skip_final_snapshot  = true
  vpc_security_group_ids = var.vpc_security_group_ids
}

resource "aws_ssm_parameter" "secret" {
  name        = var.ssm_parameter_name
  type        = "SecureString"
  value       = jsonencode({
    username = var.username,
    password = var.password,
    host     = aws_db_instance.wordpress.address,
    database = var.db_name
  })
}