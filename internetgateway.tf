resource "aws_internet_gateway" "sneha-gw" {
  vpc_id = aws_vpc.sneha_terraform_vpc.id

  tags = {
    Name = "sneha-gw"
  }
}