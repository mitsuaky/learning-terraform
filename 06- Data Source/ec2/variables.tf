variable "aws_region" {
  type        = string
  description = "Region to deploy the resources"
  default     = "eu-central-1"
}

variable "instance_type" {
  type        = string
  description = "Type of EC2 instance"
  default     = "t3.micro"
}
