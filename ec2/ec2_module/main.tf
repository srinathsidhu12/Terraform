provider "aws" {
  region = var.region
}

resource "aws_instance" "new_instance" {
  instance_type = var.instance_type
  ami = var.ami
  key_name = var.key
  tags = {
   Name = var.instance_name
  }
}
