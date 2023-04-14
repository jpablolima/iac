resource "aws_s3_bucket" "mybucket" {
   bucket = var.name
    tags = {
        "environment" = var.env
    }
  
}