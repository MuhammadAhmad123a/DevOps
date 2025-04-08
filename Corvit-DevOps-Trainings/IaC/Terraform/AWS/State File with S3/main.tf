terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.7.0"
    }
  }

  backend "s3" {
      bucket = "mybucket15112"
      key    = "bucket/terraform.tfstate"
      region = "ap-northeast-1"
      }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-northeast-1"
  access_key = var.access-key
  secret_key = var.secret-key
}