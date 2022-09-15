
terraform {
  required_version = "1.2.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.30.0"
    }
  }

  backend "s3" {
    bucket = "tfstate-dev-801988443721"
    key    = "state/04/terraform.tfstate"
    region = "us-east-1"
  }

}

provider "aws" {
  region = var.region
}

data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "tfstate" {
  bucket = "tfstate-${var.environment}-${data.aws_caller_identity.current.account_id}"
  tags = {
    Environment = var.environment
    Owner       = "Pármenas Haniel"
  }
  force_destroy = true
}

resource "aws_s3_bucket_versioning" "tfstate" {
  bucket = aws_s3_bucket.tfstate.id
  versioning_configuration {
    status = "Enabled"
  }
}
