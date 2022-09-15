variable "env" {
  type        = string
  description = "The environment to use"
}

variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

variable "instance_ami" {
  type        = string
  description = "AMI to use for the instance"
  default     = "ami-05fa00d4c63e32376"
  # Amazon Linux 2 AMI (HVM), SSD Volume Type, (64 bits (x86)) - Kernel 5.10

  validation {
    condition     = length(var.instance_ami) > 4 && substr(var.instance_ami, 0, 4) == "ami-"
    error_message = "The AMI must start with ami-."
  }
}

variable "instance_number" {
  type = object({
    dev  = number
    prod = number
  })
  description = "Number of instances to create"
  default = {
    dev  = 1
    prod = 3
  }
}

variable "instance_type" {
  type = object({
    dev  = string
    prod = string
  })
  description = "Type of instance to use for each environment"
  default = {
    dev  = "t3.micro"
    prod = "t3.medium"
  }
}
