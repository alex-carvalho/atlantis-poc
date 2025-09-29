provider "aws" {
  region = "us-west-2"
  
}

resource "aws_s3_bucket" "atlantis_bucket" {
  bucket = "my-atlantis-bucket-unique-name"
}