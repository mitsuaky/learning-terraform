locals {
  data_filepath = "data.json"

  common_tags = {
    Service     = "TwitchEvensub"
    ManagedBy   = "Terraform"
    Environment = var.environment
    Owner       = "Pármenas Haniel"
  }
}
