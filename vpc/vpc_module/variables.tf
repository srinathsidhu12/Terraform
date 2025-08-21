variable "region" {
  description = "specifying region"
  type        = string
  default     = "ap-south-1"
}

variable "vpc_name" {
  description = "name of vpc"
  type        = string
  default     = "sample_vpc"
}
variable "vpc_cidr" {
  description = "vpc cidr block"
  type        = string
}

variable "public_subnet_name" {
  description = "name of public subnet"
  type        = string
}

variable "public_subnet_cidr" {
  description = "cidr of public subnet"
  type        = string
}

variable "private_subnet_name" {
  description = "name of private subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "cidr of public subnet"
  type        = string
}

variable "internet_gateway_name" {
  description = "internet gateway name"
  type        = string
}

variable "eip_name" {
  description = "name of eip"
  type        = string
}

variable "nat_gateway_name" {
  description = "name of natgateway"
  type        = string
}


variable "public_route_table_name" {
  description = "name of public route table"
  type        = string
}

variable "private_route_table_name" {
  description = "name of private route table"
  type        = string
}







