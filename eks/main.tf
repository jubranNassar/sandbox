module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.21.0"

  subnet_ids               = var.subnet_ids
  control_plane_subnet_ids = var.subnet_ids
}