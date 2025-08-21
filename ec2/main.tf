module "Ec2_instance" {
  source        = "/home/ubuntu/terraform/ec2/ec2_module"
  region        = var.region
  instance_type = var.instance_type
  ami           = var.ami
  key           = var.key
  instance_name = var.instance_name
}
