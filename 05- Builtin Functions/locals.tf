locals {
  instance_number = lookup(var.instance_number, var.env)

  file_ext    = "zip"
  object_name = "data-zip"

  common_tags = {
    "Owner" = "Pármenas Haniel"
    "Env"   = var.env
  }
}
