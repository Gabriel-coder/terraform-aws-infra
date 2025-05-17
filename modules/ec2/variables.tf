# modules/ec2/variables.tf
variable "subnet_id" {
  description = "ID da subnet pública"
  type        = string
}

variable "key_name" {
  description = "Nome da Key Pair"
  type        = string
}
