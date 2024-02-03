terraform {
  cloud {
    organization = "haoxian"
    workspaces {
      name = "haoxian-aws-infrastucture"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.32.1"
    }
  }
}

provider "aws" {
  region = var.region
}

module "ecr" {
  source = "./modules/ecr"
}
