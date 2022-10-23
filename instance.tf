resource "aws_instance" "public1" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = module.network.public1_id
  vpc_security_group_ids = aws_security_group.ec2_sg.id

  tags = {
    Name = "ter_ec2_1"
  }
}

resource "aws_instance" "public2" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = module.network.public2_id
  vpc_security_group_ids = aws_security_group.ec2_sg.id

  tags = {
    Name = "ter_ec2_2"
  }
}