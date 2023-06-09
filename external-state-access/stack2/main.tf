
terraform {
  required_version = ">= 1.0.2"
}

data "terraform_remote_state" "stack1" {
  backend = "remote"

  config = {
    hostname     = "spacelift.io"
    organization = "my-first-env"

    workspaces = {
      name = "external-state-1"
    }
  }
}

output "hello_dog_stack1" {
  value = data.terraform_remote_state.stack1.outputs.hello_dog
}