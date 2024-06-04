resource "aws_vpc" "sneha_terraform_vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = "sneha_terraform_vpc"
  }
}
