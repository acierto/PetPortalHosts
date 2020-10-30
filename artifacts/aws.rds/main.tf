# Terraform configuration

provider "aws" {
  region = "{{AWSRegion}}"
  access_key = "{{AWS_ACCESS_KEY}}"
  secret_key = "{{AWS_SECRET_KEY}}"
}

resource "aws_db_instance" "mysqldb" {
  allocated_storage    = 100
  engine               = "mysql"
  engine_version       = "5.7.19"
  identifier           = "mysqldb"
  instance_class       = "db.t2.micro"
  password             = "{{DB_USERNAME}}"
  skip_final_snapshot  = true
  storage_encrypted    = false
  username             = "{{DB_PASSWORD}}"
  vpc_security_group_ids = ["sg-0ede761da972c2900", "sg-0755f4c4ecea46847"]
}