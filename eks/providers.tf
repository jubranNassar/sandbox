terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.57.0"
    }
    spacelift = {
      source  = "spacelift-io/spacelift"
      version = "1.8.0"
    }
    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = ">=2.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">=2.10"
    }
    time = {
      source  = "hashicorp/time"
      version = ">= 0.9"
    }
    tls = {
      source  = "hashicorp/tls"
      version = ">= 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "spacelift" {}

provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
  exec {
    api_version = "client.authentication.k8s.io/v1beta1"
    command     = "aws"
    args        = ["eks", "get-token", "--cluster-name", module.eks.cluster_name]
  }
}