variable "region" {
  type        = string
  description = "The AWS region to use"
  default     = "us-east-1"
}

variable "environment" {
  type        = string
  description = "The environment to use"
  default     = "dev"
}
