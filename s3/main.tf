module "s3_module" {
  source      = "/home/ubuntu/terraform/s3/s3_module"
  region      = "ap-south-1"
  bucket_name = "mybucketwglnew"
  environment  = "dev"
}

