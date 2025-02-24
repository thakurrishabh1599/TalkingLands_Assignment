resource "aws_security_group" "nginx_sg" {
  name        = "nginx_sg"
  description = " nginx_sg"
  #vpc_id      = aws_vpc.main.id

  tags = {
    Name = "nginx_sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "sshfromMyIP" {
  security_group_id = aws_security_group.nginx_sg.id
  cidr_ipv4         = "106.219.166.115/32"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.nginx_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_egress_rule" "allow_all_OutBound_Rule_ipv4" {
  security_group_id = aws_security_group.nginx_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

resource "aws_vpc_security_group_egress_rule" "allow_all_OutBound_Rule_ipv6" {
  security_group_id = aws_security_group.nginx_sg.id
  cidr_ipv6         = "::/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}