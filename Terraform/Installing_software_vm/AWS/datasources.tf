data "aws_vpc" "default" {
  id = var.vpc_id
}

data "aws_subnet" "first" {
  vpc_id            = data.aws_vpc.default.id
  availability_zone = "${var.region}a"
}