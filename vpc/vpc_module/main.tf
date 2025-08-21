provider "aws" {
  region = var.region
}

resource "aws_vpc" "sample" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.sample.id
  cidr_block = var.public_subnet_cidr
  tags = {
    Name = var.public_subnet_name
  }
}
resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.sample.id
  cidr_block = var.private_subnet_cidr
  tags = {
    Name = var.private_subnet_name
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.sample.id
  tags = {
    Name = var.internet_gateway_name
  }
}

resource "aws_eip" "main" {
  domain = "vpc"

  tags = {
    Name = var.eip_name
  }
}

resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.main.id
  subnet_id     = aws_subnet.public.id
  tags = {
    Name = var.nat_gateway_name
  }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.sample.id
  tags = {
    Name = var.public_route_table_name
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.sample.id
  tags = {
    Name = var.private_route_table_name
  }
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gw.id
  }
}

resource "aws_route_table_association" "public_subnet_association" {
  route_table_id = aws_route_table.public_route_table.id
  subnet_id      = aws_subnet.public.id
}

resource "aws_route_table_association" "private_subnet_association" {
  route_table_id = aws_route_table.private_route_table.id
  subnet_id      = aws_subnet.private.id
}



