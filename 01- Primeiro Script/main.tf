terraform {
  required_version = "1.2.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.30.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}


resource "aws_s3_bucket" "test-bucket" {
  bucket = "mit-dev-terraform-learning-omg"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManegedBy   = "Terraform"
  }
}

resource "aws_s3_bucket_acl" "test-bucket-acl" {
  bucket = aws_s3_bucket.test-bucket.id
  acl    = "private"

}
