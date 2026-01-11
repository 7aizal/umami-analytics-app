module "ecr" {
  source = "../modules/ecr"

  name            = var.ecr_repository_name
  max_image_count = var.ecr_max_image_count

  tags = var.tags
}