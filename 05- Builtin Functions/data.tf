data "template_file" "json" {
  template = file("data.json.tpl")

  vars = {
    type                = "stream.online"
    broadcaster_user_id = "123456789"
    callback            = "https://mit.example.com/eventsub/callback"
  }
}

data "archive_file" "json" {
  type        = local.file_ext
  output_path = "${path.module}/files/${local.object_name}.${local.file_ext}"

  source {
    content  = data.template_file.json.rendered
    filename = "${local.object_name}.json"
  }
}
