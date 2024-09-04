data "spacelift_ips" "ips" {}

output "ips" {
  value = data.spacelift_ips.ips
}

terraform {
  required_providers {
    spacelift = {
      source  = "spacelift-io/spacelift"
      version = "1.8.0"
    }
  }
}