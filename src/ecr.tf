module "public_ecr" {
  source = "terraform-aws-modules/ecr/aws"

  repository_name = "exa-nodejs-application"
  repository_type = "public"

  repository_read_write_access_arns = ["arn:aws:iam::891377305663:role/terraform"]

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}