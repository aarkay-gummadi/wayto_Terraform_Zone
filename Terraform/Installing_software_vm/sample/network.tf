resource "aws_vpc" "ntier" {
  cidr_block = var.vpc_cidr
}

resource "aws_subnet" "subnets" {
  count = length(var.subnet_info.names)
  cidr_block = cidrsubnet(var.vpc_cidr_block,8,count.index)
  vpc_id = aws_vpc.ntier.id
  tags = {
    Name = var.subnet_info.names[count.index],
    Env = terraform.workspace
    Type = conntains(var.subnent_info.public_subnet_info.names[count.index])
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.ntier.id
  tags = {
    "Name" = "ntier"
    Env = terraform.workspace
  }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.ntier.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

data "aws_subnets" "public_subnets" {
  filter {
    name = "vpc_id"
    values = [aws_vpc.ntier.id]
  }
  tags = {
    Name = "public"
  }
}

data "aws_subnets" "private_subnets" {
  filter {
    name = "vpc_id"
    values = [aws_vpc.ntier.id]
  }
  tags = {
    Name = "private"
  }
}

resource "aws_route_table_association" "public" {
  count = length(var.subnet_info.public_subnet_names)
  subnet_id = data.aws_subnets.private_subnet.

}

