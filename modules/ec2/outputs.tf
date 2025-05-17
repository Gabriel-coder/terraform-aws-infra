# modules/ec2/outputs.tf
output "instance_public_ip" {
  value = aws_instance.terraform-lab.public_ip
}
