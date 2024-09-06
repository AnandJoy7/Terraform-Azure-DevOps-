resource "aws_s3_bucket" "example_bucket" {
  bucket = "ducket1"  # Replace with a unique bucket name

  tags = {
    Name        = "ExampleS3Bucket"
    Environment = "Dev"
  }
}
