variable "aws_region" {
  default = "us-east-1"
}

variable "ecr_image" {
  description = "Strapi Docker image URI in ECR"
  type        = string
}
