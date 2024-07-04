terraform {
  required_version = ">=3.64.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.40"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "exa-tfstates"
    key    = "path/to/my/key"
    region = var.region
  }
}