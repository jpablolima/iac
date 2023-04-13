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