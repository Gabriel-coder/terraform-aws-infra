# modules/ec2/variables.tf
variable "subnet_id" {
  description = "ID da subnet pública"
  type        = string
}

variable "key_name" {
  description = "Nome da Key Pair"
  type        = string
}

variable "security_group_ids" {
  description = "Lista de IDs de Security Groups para a instância EC2"
  type        = list(string)
}
