provider "aws" {
  region     = "us-east-1"
  shared_credentials_files = ["~/.aws/credentials"]
  
}

terraform {
    backend "s3"   {
        bucket = "mybucket-terraform-tfstate"
        key = "terraform.tfstate"
        region = "us-east-1"
    }
}