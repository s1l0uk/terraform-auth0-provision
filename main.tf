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

  email      = each.value.email
  password   = each.value.password
  connection = each.value.connection
}

resource "auth0_group" "groups" {
  for_each = var.groups

  name        = each.value.name
  description = each.value.description
}

resource "auth0_application" "applications" {
  for_each = var.applications

  name        = each.value.name
  type        = each.value.type
  callbacks    = each.value.callbacks
  allowed_origins = each.value.allowed_origins
  # Additional application properties can be added here
}