#elastic_ip
resource "aws_eip" "eip_sneha" {
  domain = "vpc"
  tags = {
    Name = "eip_sneha"
  }
}
#nat
resource "aws_nat_gateway" "sneha_nat" {
  allocation_id = aws_eip.eip_sneha.id
  subnet_id     = aws_subnet.public_subnet[0].id

  tags = {
    Name = "sneha_nat"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  #depends_on = [aws_internet_gateway.example]
}