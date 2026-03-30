terraform {
  required_version = ">= 1.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.28.0"
    }
  }

  backend "s3" {}
}

provider "aws" {
  region = var.aws_region
  assume_role {
    role_arn = var.infra_role_arn
  }
}