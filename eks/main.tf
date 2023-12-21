module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.21.0"

  cluster_name              = var.cluster_name
  subnet_ids                = var.subnet_ids
  control_plane_subnet_ids  = var.subnet_ids
  manage_aws_auth_configmap = true

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