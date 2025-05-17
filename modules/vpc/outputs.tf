# modules/vpc/outputs.tf
output "vpc_id" {
  value = aws_vpc.terraform-lab-vpc.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "private_subnet_id" {
  value = aws_subnet.private.id
}