resource "aws_db_instance" "sample" {
  allocated_storage   = 10
  identifier          = "my-sql-db"
  db_name             = "mydb"
  engine              = "mysql"
  engine_version      = "8.0"
  instance_class      = "db.t3.micro"
  username            = var.username
  password            = var.password
  skip_final_snapshot = true
}
