terraform {
  required_version = ">= 0.14"
}

provider "aws" {
  region = var.region
}

data "aws_caller_identity" "current" {}

module "terraform_init" {
  source      = "../../"
  name_prefix = var.name_prefix

  tags = {
    environment = "dev"
    terraform   = "True"
  }
}
