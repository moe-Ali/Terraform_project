resource "aws_route_table" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "ter_route_table"
  }
}

resource "aws_route" "public" {
  route_table_id            = aws_route_table.main.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id= aws_internet_gateway.main.id
}

resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.main.id
}

resource "aws_route_table_association" "public2" {
  subnet_id      = aws_subnet.public2.id
  route_table_id = aws_route_table.main.id
}