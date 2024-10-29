provider "auth0" {
  domain        = var.auth0_domain
  client_id     = var.auth0_client_id
  client_secret = var.auth0_client_secret
}

resource "auth0_tenant" "example" {
  name             = var.tenant_name
  logo_url         = var.logo_url
  default_directory = var.default_directory
  # Add more configurations as needed
}