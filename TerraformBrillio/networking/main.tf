resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "subnet_one" {
  vpc_id     = aws_vpc.main.id
  cidr_block = local.private_subnets[0]
  availability_zone = local.azs[0]
  tags = {
    Name = "Main"
  }
}

resource "aws_subnet" "subnet_two" {
  vpc_id     = aws_vpc.main.id
  cidr_block = local.private_subnets[1]
  availability_zone = local.azs[1]
  tags = {
    Name = "Main"
  }
}

resource "aws_route_table" "example" {
  vpc_id = aws_vpc.main.id

  route = []

  tags = {
    Name = "example"
  }
}