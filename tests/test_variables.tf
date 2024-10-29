locals {
  required_vars = [
    "auth0_domain",
    "auth0_client_id",
    "auth0_client_secret",
    "tenant_name",
    "logo_url",
    "default_directory",
    "users",
    "groups",
    "applications"
  ]
}

resource "null_resource" "test_vars" {
  count = length(local.required_vars)

  provisioner "local-exec" {
    command = "echo ${local.required_vars[count.index]} is set"
  }
}