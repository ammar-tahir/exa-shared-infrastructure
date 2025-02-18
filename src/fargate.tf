module "fargate_profile" {
  source = "terraform-aws-modules/eks/aws//modules/fargate-profile"

  name         = "separate-fargate-profile"
  cluster_name = "exa-shared-cluster"

  subnet_ids = local.private_subnets
  selectors = [{
    namespace = "kube-system"
  }]

  tags = {
    Environment = "dev"
    Terraform   = "true"
  }
}