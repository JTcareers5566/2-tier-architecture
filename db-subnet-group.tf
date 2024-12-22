resource "aws_db_subnet_group" "DB-group" {
  name       = "DB-SN-GROUP"
  subnet_ids = [aws_subnet.private-sn-1.id, aws_subnet.private-sn-2.id]
}