variable "region" {
   description = "Region of Instance"
   type = string
   default = "ap-south-1"
}

variable "instance_type" {
   description = "Specifying instance type"
   type = string
   default = "t2.micro"
}

variable "ami" {
   description = "Specifying ami"
   type = string
   default = "ami-0f918f7e67a3323f0"
}

variable "key" {
    description = "specifying key"
    type = string
    default = "sample"
}

variable "instance_name" {
  description = "specifying instance tag"
  type = string
  default = "abc"
}
