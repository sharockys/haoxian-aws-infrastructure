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




resource "aws_iam_openid_connect_provider" "github" {
  url             = "https://token.actions.githubusercontent.com"
  client_id_list  = ["sts.amazonaws.com"]
  thumbprint_list = ["a031c46782e6e6c662c2c87c76da9aa62ccabd8e"]
}


locals {
  repos = [
    "whisper-app",
  ]
}
module "repositories" {
  source                      = "./modules/ecr"
  for_each                    = toset(local.repos)
  name                        = each.value
  openid_connect_provider_arn = aws_iam_openid_connect_provider.github.arn
}
