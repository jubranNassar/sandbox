variable "worker_pool_config" {
  type = string
}

variable "worker_pool_private_key" {
  type = string
}

variable "worker_pool_id" {
  type = string
}

variable "worker_pool_security_groups" {
  type = list(string)
}

variable "worker_pool_subnets" {
  type = list(string)
}

variable "spacelift_api_key_endpoint" {
  type = string
}

variable "spacelift_api_key_id" {
  type = string
}

variable "spacelift_api_key_secret" {
  type = string
}

# variable "local_path" {
#     type = string
#     default = "/mnt/workspace/source/worker-pool-test/test"
# }