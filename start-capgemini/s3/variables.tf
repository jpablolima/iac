# Output Bucket S3
variable "name" {
    description = "Nome do bucket."
    type = string
}

variable "env" {
    description = "Ambiente que será provisionado."
    type = string
  
}

variable "region" {
  description = "Região que será provisionado a infraestrutura."
  type = string
}

# Output Bucket EC2
