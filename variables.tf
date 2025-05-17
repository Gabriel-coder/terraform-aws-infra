variable "db_password" {
  description = "Senha do banco de dados RDS"
  type        = string
  sensitive   = true
}

variable "key_name" {
  description = "Nome da chave SSH para EC2"
  type        = string
  default     = "terraform-novo"
}
