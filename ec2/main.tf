resource "aws_instance" "test-instance" {
    instance_type = "t2.micro"
    ami = data.aws_ami.dev_server_ami.id
}