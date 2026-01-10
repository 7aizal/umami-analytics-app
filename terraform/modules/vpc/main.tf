data "aws_availability_zones" "available" {
  state = "available"
}

locals {
  azs = slice(data.aws_availability_zones.available.names, 0, var.az_count)
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.0"

  name = var.name
  cidr = var.cidr

  azs = local.azs

  private_subnets = [
    for i in range(length(local.azs)) :
    cidrsubnet(var.cidr, 4, i)
  ]

  public_subnets = [
    for i in range(length(local.azs)) :
    cidrsubnet(var.cidr, 4, i + 10)
  ]

  enable_nat_gateway = true
  single_nat_gateway = var.single_nat_gateway

  public_subnet_tags = {
    "kubernetes.io/role/elb" = "1"
  }

  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = "1"
  }

  tags = var.tags
}