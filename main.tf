
provider "aws" {
  region = "us-east-1"  # Replace with your preferred region
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "ducket1"  # Replace with a unique bucket name

  tags = {
    Name        = "ExampleS3Bucket"
    Environment = "Dev"
  }
}
