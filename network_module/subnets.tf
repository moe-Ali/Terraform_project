resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.network_public1_subnet_cidr
  map_public_ip_on_launch = true
  availability_zone = var.network_avilabilty_zone1

  tags = {
    Name = "ter_public1"
  }
}

resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.network_public2_subnet_cidr
  map_public_ip_on_launch = true
  availability_zone = var.network_avilabilty_zone2

  tags = {
    Name = "ter_public2"
  }
}