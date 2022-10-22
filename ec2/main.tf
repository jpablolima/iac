terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-08c40ec9ead489470"
  instance_type = "t2.micro"
  key_name      = "devops"
  # user_data     = <<-EOF
  #     # #! /bin/bash
  #     # sudo apt-get update
  #     # sudo apt-get install -y apache2
  #     # sudo systemctl start apache2
  #     # sudo systemctl enable apache2
  #     # echo "Deployed by Terraform!" | sudo tee /var/www/html/index.html
  #   EOF

  tags = {
    Name = "Ubuntu Server"
  }
}

resource "aws_security_group" "app_server" {
  name = "terraform-example-instance"
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}