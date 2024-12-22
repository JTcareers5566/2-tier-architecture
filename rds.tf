resource "aws_db_instance" "Database" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = var.db-username
  password             = var.db-password
  parameter_group_name = "default.mysql5.7"
  db_subnet_group_name = aws_db_subnet_group.DB-group.name
  vpc_security_group_ids = [aws_security_group.Database_SG.id]
  skip_final_snapshot  = true
}
