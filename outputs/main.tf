data "spacelift_ips" "ips" {}

output "ips" {
    value = data.spacelift_ips.ips
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.28.0"
    }
    spacelift = {
      source  = "spacelift-io/spacelift"
      version = "1.8.0"
    }
  }
}