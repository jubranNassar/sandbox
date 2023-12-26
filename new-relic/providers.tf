terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.57.0"
    }
    spacelift = {
      source  = "spacelift-io/spacelift"
      version = "1.8.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

