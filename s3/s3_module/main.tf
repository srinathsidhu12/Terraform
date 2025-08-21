provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "sample" {
  bucket = var.bucket_name
  tags = {
    Name        = "sample_bucket"
    environment = var.environment
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.sample.id
  versioning_configuration {
    status = "Enabled"
  }
}




