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
  region = var.aws_region
}
