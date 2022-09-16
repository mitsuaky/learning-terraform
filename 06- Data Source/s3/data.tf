data "terraform_remote_state" "server" {
  backend = "s3"

  config = {
    bucket = "tfstate-dev-801988443721"
    key    = "dev/terraform.tfstate"
    region = var.aws_region
  }
}
