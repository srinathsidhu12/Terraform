module "aws_rds" {
  source   = "/home/srinath/terraform/RDS/RDS_module"
  username = "sample123"
  password = "sample123"
}

output "rds_endpoint_value" {
  value = module.aws_rds.rds_endpoint
}
