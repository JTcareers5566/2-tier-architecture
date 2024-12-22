resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.2-tier-VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

resource "aws_route_table_association" "rta-1" {
  subnet_id      = aws_subnet.public-sn-1.id
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "rta-2" {
  subnet_id      = aws_subnet.public-sn-2.id
  route_table_id = aws_route_table.public-rt.id
}