provider "aws" {
   region = var.region
}

resource "aws_instance" "sample_instance" {
  ami = var.ami
  instance_type = var.instance_type
}

variable "region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "ami" {
  description = "AMI ID for the instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

