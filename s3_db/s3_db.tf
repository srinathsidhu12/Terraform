provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "mybucketnewwgl123"
  tags = {
    Name = "Mybucket"
    environment = "dev"
  }
}
resource "aws_dynamodb_table" "my_table" {
  name = "terraform_lock_table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    Name = "terraform lock table"
    environment = "dev"
  }
}

