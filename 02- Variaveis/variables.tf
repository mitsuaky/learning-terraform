variable "region" {
  type        = string
  description = "The AWS region to use"
  default     = "us-east-1"
}


variable "instance_type" {
  type        = string
  description = "The type of instance to use"
  default     = "t3.nano"
}

variable "instance_ami" {
  type        = string
  description = "The AMI to use for the instance"
  default     = "ami-05fa00d4c63e32376"
  # Amazon Linux 2 AMI (HVM), SSD Volume Type, (64 bits (x86)) - Kernel 5.10

}

variable "instance_tags" {
  type        = map(string)
  description = "The tags to apply to the instance"
  default = {
    Name        = "Amazon Linux 2"
    Environment = "Dev"
    ManegedBy   = "Terraform"
  }

}
