resource "aws_instance" "test-instance" {
    instance_type = var.instance_type
    ami = data.aws_ami.dev_server_ami.id
    tags = {
      name = "test-instance"
      workspace = var.spacelift_run_id
    }
}