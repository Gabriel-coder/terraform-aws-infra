# Create an RDS instance in the private subnet
resource "aws_db_instance" "example" {
  identifier         = "example-db"
  engine            = "mysql"
  engine_version    = "8.0"
  instance_class    = "db.t2.micro"
  allocated_storage  = 20
  storage_type      = "gp2"
  db_subnet_group_name = aws_db_subnet_group.example.name
  vpc_security_group_ids = [aws_security_group.example.id]
  username          = "admin"
  password          = var.db_password
  skip_final_snapshot = true

  tags = {
    Name = "ExampleDBInstance"
  }
}
# Create a DB subnet group for the RDS instance
resource "aws_db_instance" "example" {
  identifier              = "example-db"
  engine                  = "mysql"
  engine_version          = "8.0.28"              # ou versão compatível
  instance_class          = "db.t2.micro"         # ou db.t3.micro se preferir
  allocated_storage       = 20
  storage_type            = "gp2"
  db_subnet_group_name    = aws_db_subnet_group.example.name
  vpc_security_group_ids  = [aws_security_group.example.id]
  username                = "admin"
  password                = var.db_password
  skip_final_snapshot     = true

  tags = {
    Name = "ExampleDBInstance"
  }
}


