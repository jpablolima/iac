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


module "servers" {
    source        = "/mnt/g/Projects/iac/terraform/modules/ec2"
    name          =  var.name
    instance_type =  var.instance_type
    owners        =  var.owners
    region        =  var.region
    image         =  var.image
    key_name      =  var.key_name
    servers       =  2
  
}
