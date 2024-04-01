resource "aws_vpc" "hyderabad" {
  cidr_block = "172.16.0.0/16"
  provider = aws.hyderabad
}

resource "aws_vpc" "mumbai" {
  cidr_block = "192.168.0.0/16"
  provider = aws.mumbai
}
# module "aws_vpc" {
#   providers = {
#     aws = aws.hyderabad
#    }
# }