locals {
  name_prefix = "${var.project_name}-${var.environment}"
}

module "vpc" {
  source = "./modules/vpc"

  name               = local.name_prefix
  cidr               = var.vpc_cidr
  az_count           = var.az_count
  single_nat_gateway = var.single_nat_gateway

  tags = var.tags
}

module "eks" {
  source = "./modules/eks"

  cluster_name            = var.cluster_name
  cluster_version         = var.cluster_version
  endpoint_public_access  = var.endpoint_public_access
  endpoint_private_access = var.endpoint_private_access

  vpc_id             = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids

  node_group_name     = var.node_group_name
  node_instance_types = var.node_instance_types
  node_desired_size   = var.node_desired_size
  node_min_size       = var.node_min_size
  node_max_size       = var.node_max_size

  tags = var.tags
}

