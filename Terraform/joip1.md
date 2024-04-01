install terraform latest version 1.4.2
write a terraform template to use aws provider any thing which is released 6 months ago

resource
provider
arguments
attributes

* Explain Jenkinsfile
properties(commonModuleJobProps())
buildBroadleafModule(params)


provider "aws" {
  version = "~> 3.0"
  region  = "us-west-2"
}

resource "aws_instance" "terraform" {
  ami           = "ami-0735c191cf914754d"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform"
  }
} 