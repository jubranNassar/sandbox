terraform {
  source = "./main.tf"
}

inputs = {
  bucket_name = "my-terragrunt-s3-bucket"
}