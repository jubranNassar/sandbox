terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.57.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}


resource "aws_s3_bucket" "jubran-wadwd2qawdwa-bucekt" {
    bucket = "jubran-wadwd2qawdwa-bucekt"
}


import {
  id = "jubran-wadwd2qawdwa-bucekt"
  to = aws_s3_bucket.jubran-wadwd2qawdwa-bucekt
}