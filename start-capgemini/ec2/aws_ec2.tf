data "aws_ami" "ubuntu" {
    most_recent = true

    filter{
        name = "name"
        values = [ var.image ]
        
    }   

    filter {
      name = "virtualization-type"
      values = [ "hvm" ]


    }

    owners = [ var.owners ] # Canonical

}

resource "aws_instance" "web" {
    ami = data.aws_ami.ubuntu.id
    instance_type = var.instance_type
    key_name = var.key_name
    
    tags = {
      "Name" = var.name
    }
}