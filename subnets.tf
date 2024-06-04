#public_subnet
resource "aws_subnet" "public_subnet" {
  count      = length(var.public_subnets)
  vpc_id     = aws_vpc.sneha_terraform_vpc.id
  cidr_block = element(var.public_subnets, count.index)
  tags = {
    Name = "Public Subnet ${count.index + 1}"
  }
}
#private_subnet
resource "aws_subnet" "private_subnet" {
  count      = length(var.private_subnets)
  vpc_id     = aws_vpc.sneha_terraform_vpc.id
  cidr_block = element(var.private_subnets, count.index)
  tags = {
    Name = "Private Subnet ${count.index + 1}"
  }
}