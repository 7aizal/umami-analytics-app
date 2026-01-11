variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "eu-west-2"
}

variable "ecr_repository_name" {
  type        = string
  description = "ECR repository name"
  default     = "umami"
}

variable "ecr_max_image_count" {
  type        = number
  description = "Max images to keep"
  default     = 30
}

variable "tags" {
  type        = map(string)
  description = "Default tags"
  default     = {}
}