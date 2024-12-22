resource "aws_subnet" "public-sn-1" {
  vpc_id                  = aws_vpc.2-tier-VPC.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = true 
}

resource "aws_subnet" "public-sn-2" {
  vpc_id                  = aws_vpc.2-tier-VPC.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-east-2b"
  map_public_ip_on_launch = true 
}