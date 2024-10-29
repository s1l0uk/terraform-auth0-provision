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

  name             = each.value.name
  type             = each.value.type
  callbacks        = try(each.value.callbacks, null)
  allowed_origins  = try(each.value.allowed_origins, null)
  client_id        = try(each.value.client_id, null)
  client_secret    = try(each.value.client_secret, null)
  token_endpoint    = try(each.value.token_endpoint, null)
  logout_redirect_uri = try(each.value.logout_redirect_uri, null)
  api_identifier   = try(each.value.api_identifier, null)
  grant_types      = try(each.value.grant_types, null)
  is_first_party   = try(each.value.is_first_party, null)
  description      = try(each.value.description, null)
}