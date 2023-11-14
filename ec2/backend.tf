terraform {
  backend "s3" {
    bucket = "jubran-test-bucket"
    region = "us-east-1"
  }
}