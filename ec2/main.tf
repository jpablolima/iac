provider "aws" {
    region = "us-east-1"
    version = "~> 4.0"
  
}

terraform {
    backend "s3"   {
        bucket = "terraform-iac2"
        key = "terraform.tfstate"
        region = "us-east-1"
    }
}