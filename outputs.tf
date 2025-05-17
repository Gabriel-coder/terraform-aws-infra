# Output the public IP of the EC2 instance
output "instance_public_ip" {
  value = aws_instance.example.public_ip
}
# Output the endpoint of the RDS instance
output "db_instance_endpoint" {
  value = aws_db_instance.example.endpoint
}
# Output the VPC ID
output "vpc_id" {
  value = aws_vpc.example.id
}
# Output the public subnet ID       
output "public_subnet_id" {
  value = aws_subnet.public.id
}
# Output the private subnet ID
output "private_subnet_id" {
  value = aws_subnet.private.id
}
# Output the security group ID
output "security_group_id" {
  value = aws_security_group.example.id
}
# Output the Internet Gateway ID
output "internet_gateway_id" {
  value = aws_internet_gateway.example.id
}
# Output the public route table ID
output "public_route_table_id" {
  value = aws_route_table.public.id
}
# Output the route table association IDs
output "public_route_table_association_id" {
  value = aws_route_table_association.public.id
}
# Output the DB subnet group ID
output "db_subnet_group_id" {
  value = aws_db_subnet_group.example.id
}
# Output the DB instance ID
output "db_instance_id" {
  value = aws_db_instance.example.id
}
# Output the DB instance ARN
output "db_instance_arn" {
  value = aws_db_instance.example.arn
}               

