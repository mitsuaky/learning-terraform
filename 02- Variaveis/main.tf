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
  region = var.region
}

resource "aws_instance" "test-instance" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = var.instance_tags
}

