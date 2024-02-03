# Terraform
variable "project_name" {
  description = "Project name"
  default     = "haoxian-aws-infrastructure"
}

variable "env" {
  description = "Environment"
  default     = "prod" # or "stage" or "prod"
}

# AWS General
variable "region" {
  description = "AWS region"
  default     = "us-east-1" # us-east-virginia, with low cost GPUs
}


variable "subnet_public_cidr_block" {
  type        = string
  description = "CIDR block for the public subnet"
  default     = "10.0.0.0/21"
}

variable "subnet_private_cidr_block" {
  type        = string
  description = "CIDR block for the private subnet"
  default     = "10.0.8.0/21"
}

variable "vpc_cidr_block" {
  type        = string
  description = "VPC CIDR block"
  default     = "10.0.0.0/16"
}
