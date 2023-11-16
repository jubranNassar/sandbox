terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.25.0"
    }
    spacelift = {
      source  = "spacelift-io/spacelift"
      version = "1.6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# provider "aws" {
#   region = "us-east-1"
#   assume_role {
#     role_arn = "arn:aws:iam::657848498343:role/assume-role"
#     session_name = var.spacelift_run_id
#   }
# }