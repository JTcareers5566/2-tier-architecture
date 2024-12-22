resource "aws_security_group" "Database-SG" {
  name        = "Database_SG"
  description = "Allow inbound traffic"
  vpc_id = aws_vpc.2-tier-VPC.id

  ingress {
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    security_groups =  [aws_security_group.SG.id]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}
