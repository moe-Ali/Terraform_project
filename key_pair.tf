resource "aws_key_pair" "deployer" {
  key_name   = "deployer_key"
  public_key = file(var.kay_pair_file)
}