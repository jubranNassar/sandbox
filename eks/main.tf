module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.21.0"

  cluster_name                   = var.cluster_name
  subnet_ids                     = var.subnet_ids
  control_plane_subnet_ids       = var.subnet_ids
  cluster_endpoint_public_access = true

  manage_aws_auth_configmap = true

  aws_auth_users = [
    {
      userarn  = "AWSReservedSSO_AWSAdministratorAccess_3f3b6cc7551cce44/jubrann@spacelift.io",
      uesrname = "jubran"
    }
  ]

  aws_auth_roles = [
    {
      rolearn = "arn:aws:iam::657848498343:role/aws-reserved/sso.amazonaws.com/eu-west-1/AWSReservedSSO_AWSAdministratorAccess_3f3b6cc7551cce44",
      username = "jubran"
    }
  ]

  aws_auth_accounts = ["657848498343"]

  cluster_addons = {
    coredns = {
      most_recent = true
    }
    kube-proxy = {
      most_recent = true
    }
    vpc-cni = {
      most_recent = true
    }
  }

  eks_managed_node_groups = {
    initial = {
      instance_types        = ["m5.xlarge"]
      create_security_group = false

      subnet_ids = var.subnet_ids

      create_launch_template = true
      launch_template_os     = "amazonlinux2eks"

      min_size     = 1
      max_size     = 5
      desired_size = 1
    }
  }
}