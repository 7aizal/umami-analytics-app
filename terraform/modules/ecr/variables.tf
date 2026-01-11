variable "name" {
  type        = string
  description = "Name of the ECR repository"
}

variable "image_tag_mutability" {
  type        = string
  description = "Whether image tags are mutable or immutable"
  default     = "IMMUTABLE"
}

variable "scan_on_push" {
  type        = bool
  description = "Enable ECR image scanning on push"
  default     = true
}

variable "max_image_count" {
  type        = number
  description = "Maximum number of images to retain"
  default     = 30
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to ECR resources"
  default     = {}
}