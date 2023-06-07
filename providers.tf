terraform {
    required_providers {
      aws = {
        source  = "hashicorp/aws"
        version = "~> 5.1.0"
      }
    }
    cloud {
      organization = "scottiepowell"

    workspaces {
      name = "aws-jenkins"
    }
  }
}
provider "aws" {
  region                  = var.aws_region
}