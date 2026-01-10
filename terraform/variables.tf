variable "aws_region" {
  type        = string
  description = "AWS region to deploy resources into"
}

variable "project_name" {
  type        = string
  description = "Project name used for naming and tagging"
}

variable "environment" {
  type        = string
  description = "Environment name (e.g. dev, stage, prod)"
}

variable "tags" {
  type        = map(string)
  description = "Tags applied to all AWS resources"
  default     = {}
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "az_count" {
  type        = number
  description = "Number of availability zones to use"
  default     = 2
}

variable "single_nat_gateway" {
  type        = bool
  description = "Whether to use a single NAT gateway"
  default     = true
}

variable "cluster_name" {
  type        = string
  description = "EKS cluster name"
}

variable "cluster_version" {
  type        = string
  description = "Kubernetes version for the EKS cluster"
}

variable "endpoint_public_access" {
  type        = bool
  description = "Whether the EKS public endpoint is enabled"
  default     = true
}

variable "endpoint_private_access" {
  type        = bool
  description = "Whether the EKS private endpoint is enabled"
  default     = true
}

variable "node_group_name" {
  type        = string
  description = "Name of the EKS managed node group"
  default     = "default"
}

variable "node_instance_types" {
  type        = list(string)
  description = "EC2 instance types for EKS worker nodes"
}

variable "node_desired_size" {
  type        = number
  description = "Desired number of worker nodes"
}

variable "node_min_size" {
  type        = number
  description = "Minimum number of worker nodes"
}

variable "node_max_size" {
  type        = number
  description = "Maximum number of worker nodes"
}