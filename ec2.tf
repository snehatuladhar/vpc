resource "aws_instance" "example" {
  ami           = "ami-00beae93a2d981137"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0639d260294d92a5d"


  tags = {
    Name  = "ec2-sneha"
    owner = "sneha"
  }
}