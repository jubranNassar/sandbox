terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.57.0"
    }
    newrelic = {
      source = "newrelic/newrelic"
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

provider "newrelic" {
  account_id = 4298101
  api_key    = "NRAK-S478KIRYHPB1S5KTN8SG0C4OMA7"
  region     = "US"
}

