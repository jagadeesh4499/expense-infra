terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.75.0"
    }
  }

  backend "s3" {
    bucket = "81s-remotestate-development"
    key    = "expense-eks"
    region = "us-east-1"
    dynamodb_table = "81s-locking-development"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}