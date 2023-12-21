module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.21.0"

  cluster_name              = var.cluster_name
  subnet_ids                = var.subnet_ids
  control_plane_subnet_ids  = var.subnet_ids
  create_aws_auth_configmap = true
  manage_aws_auth_configmap = true
}