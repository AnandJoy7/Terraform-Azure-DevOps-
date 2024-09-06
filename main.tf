terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"  # Replace with your preferred region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "ducket1"  # Replace with a unique bucket name
  acl    = "private"

  tags = {
    Name        = "ExampleS3Bucket"
    Environment = "Dev"
  }
}
