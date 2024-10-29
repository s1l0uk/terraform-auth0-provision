provider "auth0" {
  domain        = var.auth0_domain
  client_id     = var.auth0_client_id
  client_secret = var.auth0_client_secret
}

resource "auth0_tenant" "example" {
  name             = var.tenant_name
  logo_url         = var.logo_url
  default_directory = var.default_directory
}

resource "auth0_user" "users" {
  for_each = var.users

  email    = each.value.email
  password = each.value.password
  connection = each.value.connection
  # Additional user properties can be added here
}

resource "auth0_group" "groups" {
  for_each = var.groups

  name        = each.value.name
  description = each.value.description
}