resource "aws_instance" "test-instance" {
  instance_type = var.instance_type
  ami           = data.aws_ami.dev_server_ami.id
  tags = {
    name = "test-instance"
  }
}

provider "spacelift" {}

data "spacelift_space_by_path" "test" {
  space_path = "root/demo-resources"
}

output "this" {
  value = data.spacelift_space_by_path.test.id
}