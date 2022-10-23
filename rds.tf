resource "aws_db_instance" "main" {
  storage_type         ="gp2"
  allocated_storage    = 20
  db_name              = "ter_mydb"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t2.micro"
  username             = "admin"
  password             = var.rdspassword
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
}