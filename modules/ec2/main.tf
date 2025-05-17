# modules/ec2/main.tf
resource "aws_instance" "terraform-lab" {
  ami                    = "ami-0c101f26f147fa7fd"
  instance_type          = "t2.micro"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_ids
  key_name               = var.key_name

  tags = {
    Name = "terraform-lab-instance"
  }
}
