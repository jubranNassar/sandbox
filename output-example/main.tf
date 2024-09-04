

output "urls" {
  value = {
    "private_health" = "https://sms-audit.api.io.qa.velocify.net/health"
    "private_info"   = "https://sms-audit.api.io.qa.velocify.net/info"
    "private_root"   = "https://sms-audit.api.io.qa.velocify.net"
    "public_health"  = ""
    "public_info"    = ""
    "public_root"    = ""
    "waf_edge"       = ""
    "waf_origin"     = ""
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.39.1"
    }
  }
  backend "s3" {
    bucket = "jubran-terraform-backend"
    key    = "tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}