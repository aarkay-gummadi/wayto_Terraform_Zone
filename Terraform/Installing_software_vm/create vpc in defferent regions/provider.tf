terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.61.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
  alias = "mumbai"
}

provider "aws" {
  region = "ap-south-2"
  alias = "hyderabad"
}