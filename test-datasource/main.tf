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
  space_path = "root/level-one-01HAWPE18Q57B3Q58E8Z24B4FH"
}