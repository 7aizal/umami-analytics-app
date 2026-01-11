variable "name" {
  type        = string
  description = "Name of the ECR repository"
}

variable "max_image_count" {
  type        = number
  description = "Maximum number of images to keep in the repository"
  default     = 30
}

variable "tags" {
  type        = map(string)
  description = "Tags applied to the ECR repository"
  default     = {}
}