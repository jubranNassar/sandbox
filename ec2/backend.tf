terraform {
  backend "s3" {
    bucket = "jubran-test-bucket"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
  }
}