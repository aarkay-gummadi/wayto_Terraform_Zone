variable "region" {
  type = string
  default = "us-west-2"
  description = "This is for region"
}

variable "vpc_cidr" {
  type = string
  default = "172.16.0.0/16"
  description = "This is for vpc in oregon"
}
variable "subnet_info" {
    type = object({
        names = list(string)
        public_subnet_names = list(string)
    })
    default = {
      names = [ "web", "app", "db", "mgmt" ]
      public_subnet_names = [ "value" ]
    }
  
}