resource "aws_lb_target_group" "target-group" {
  name     = "Target-Group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.2-tier-VPC.id
}

resource "aws_lb_target_group_attachment" "tg-att-1" {
  target_group_arn = aws_lb_target_group.target-group.id
  target_id        = aws_instance.ec2-1.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "tg-att-2" {
  target_group_arn = aws_lb_target_group.target-group.id
  target_id        = aws_instance.ec2-2.id
  port             = 80
}