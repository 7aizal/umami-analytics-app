terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.95.0, < 6.0.0"
    }
  }

  backend "s3" {
    bucket         = "fazops-umami-eks-tf-state-eu-west-2"
    key            = "umami-eks/bootstrap/terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "fazops-umami-eks-tf-lock"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = var.tags
  }
}