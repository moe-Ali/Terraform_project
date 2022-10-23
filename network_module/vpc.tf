resource "aws_vpc" "main" {
  cidr_block = var.network_vpc_cidr

  tags = {
    Name = "ter_vpc"
  }
}