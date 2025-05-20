resource "aws_security_group" "ec2_sg" {
  name = var.ec2_name
  description = "Security group for EC2 Instance"

  tags = merge(
    local.common_tags,
    {Name = replace(local.name, "rtype", "ec2_sg")}
  )
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  count = length(var.ingress_ports)
  security_group_id = aws_security_group.ec2_sg.id
  from_port         = var.ingress_ports[count.index]
  ip_protocol       = "tcp"
  to_port           = var.ingress_ports[count.index]
  
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.ec2_lt_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" 
}