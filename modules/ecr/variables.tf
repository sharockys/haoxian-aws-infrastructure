variable "ecr_container_image" {
  type        = string
  description = "Image name for the Lambda function"
  default     = "whisper-docker"
}

variable "ecr_image_tag" {
  type        = string
  description = "Image tag for the Lambda function"
  default     = "latest"
}

variable "openid_connect_provider_arn" {
  type        = string
  description = "The ARN of the OIDC Identity Provider to associate with the cluster"
}

variable "organization" {
  type        = string
  description = "The name of the organization"
  default     = "sharockys"
}

variable "name" {
  type        = string
  description = "The name of the repository"
  default     = "whisper-app"

}

