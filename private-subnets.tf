resource "aws_subnet" "private-sn-1" {
  vpc_id                  = aws_vpc.2-tier-VPC.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = true 
}

resource "aws_subnet" "private-sn-2" {
  vpc_id                  = aws_vpc.2-tier-VPC.id
  cidr_block              = "10.0.4.0/24"
  availability_zone       = "us-east-2b"
  map_public_ip_on_launch = true 
}