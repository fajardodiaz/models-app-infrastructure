# Backend
terraform {
    required_version = "~> 1.5"
    backend "s3" {
        bucket = "modelsappbucket"
        key = "infra/terraform.state"
        region = "us-east-1"
        profile = "pfajardo"
        encrypt = true
    }
    required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.19.0"
    }
  }
}

# Provider region
provider "aws" {
  region = "us-east-1"
  profile = "pfajardo"
}

# Main file
