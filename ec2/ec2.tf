data "aws_ami" "ubuntu" {
  most_recent = true
  
  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"] 
  
}
resource "aws_instance" "jenkins" {
    ami = data.aws_ami.ubuntu.id
    instance_type = "t2.micro"

    tags = {
      Name = "jenkins"
    }
  
}