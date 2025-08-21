module "vpc" {
   source = "/home/ubuntu/terraform/vpc/vpc_module"
   region = var.region
   vpc_name = var.vpc_name
   vpc_cidr = var.vpc_cidr
   public_subnet_name = var.public_subnet_name
   public_subnet_cidr = var.public_subnet_cidr
   private_subnet_name = var.private_subnet_name
   private_subnet_cidr = var.private_subnet_cidr
   internet_gateway_name = var.internet_gateway_name
   eip_name = var.eip_name
   nat_gateway_name = var.nat_gateway_name
   public_route_table_name = var.public_route_table_name
   private_route_table_name = var.private_route_table_name
}

