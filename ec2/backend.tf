/*
terraform {
  backend "s3" {
    bucket         = "mybucketnewwgl123"
    region         = "ap-south-1"
    key            = "state_file_directory/statefile"
    dynamodb_table = "terraform_lock_table"
    encrypt        = "true"
  }
}
*/
/*
terraform {
  backend "s3" {
    bucket         = "mybucketnewwgl123"
    region         = "ap-south-1"
    key            = "state_file_directory/statefile"
    use_lock_file  = "true"
  }
}
*/
