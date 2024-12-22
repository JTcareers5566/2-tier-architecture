resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.2-tier-VPC.id
}