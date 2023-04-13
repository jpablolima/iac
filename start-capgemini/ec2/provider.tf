provider "aws" {
  region     = var.region
  shared_credentials_files = ["~/.aws/credentials"]
  
}

terraform {
    backend "s3"   {
        bucket = "mybucket-terraform-tfstate"
        key    = "terraform.tfstate"
        region = "us-east-1"
    }
}