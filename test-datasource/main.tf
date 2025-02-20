terraform {
  required_providers {
    spacelift = {
      source  = "spacelift-io/spacelift"
      version = "1.6.0"
    }
  }
}

provider "spacelift" {}

data "spacelift_space_by_path" "test" {
  space_path = "root/demo-resources"
}

output "this" {
  value = data.spacelift_space_by_path.test.id
}