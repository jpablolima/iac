provider "aws" {
  region     = "us-east-1"
  shared_credentials_files = ["~/.aws/credentials"]
  
}

# provider "aws" {
#   region     = "us-east-1"
#   access_key = "access_key"
#   secret_key = "secret_key"
# }
