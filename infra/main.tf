terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_ecr_repository" "app" {
  name         = "demo-app-mostdev"
  force_delete = true
}

output "ecr_url" {
  value = aws_ecr_repository.app.repository_url
}
