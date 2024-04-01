variable "filenames" {
  type    = list(string)
  default = ["test1.txt", "test2.txt", "test3.txt"]


}

variable "region" {
  type = string
  default = "us-west-2"
  description = "This is for region in oregon"
}

variable "fileinfo" {
  type = map(object({
    name = string
    content = string
  }))
  default = {
    "first" = {
      content = "first"
      name = "1.txt"
    },
    "third" = {
        name = "3.txt"
        content = "third"
    }

  }
}