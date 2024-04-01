terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.4.0"
    }
  }
}

provider "local" {
  # Configuration options
}

resource "local_file" "test" {
  content  = "This is a Activity given by Khaja Sir..."
  filename = "D:\\yml\\Terraform\\Activity\\test.tf"
}

output "filepath" {
  value = local_file.test
}