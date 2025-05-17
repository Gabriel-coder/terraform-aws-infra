# Subnet Group necessário para o RDS funcionar corretamente
resource "aws_db_subnet_group" "example" {
  name       = "example-db-subnet-group-v4"  # use outro nome se houver conflito
  subnet_ids = [
    aws_subnet.private.id,
    aws_subnet.private_b.id
  ]
  tags = {
    Name = "ExampleDBSubnetGroup"
  }
}

# Instância RDS MySQL
resource "aws_db_instance" "example" {
  identifier              = "example-db"
  engine                  = "mysql"
  engine_version          = "8.0.35"
  instance_class          = "db.t2.micro"
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
