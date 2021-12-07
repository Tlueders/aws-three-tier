resource "aws_db_instance" "database" {
  allocated_storage      = 10
  db_subnet_group_name   = aws_db_subnet_group.subnet-group.id
  engine                 = "mysql"
  engine_version         = "8.0.20"
  instance_class         = "db.t2.micro"
  multi_az               = true
  name                   = "mydb"
  username               = "username"
  password               = "password"
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.database-sg.id]
}

resource "aws_db_subnet_group" "subnet-group" {
  name       = "database-sg"
  subnet_ids = [aws_subnet.database-subnet.id]

  tags = {
    Name = "Database Subnet Group"
  }
}