terraform {
  required_providers {
    auth0 = {
      source  = "auth0/auth0"
      version = "~> 1.0"
    }
  }
}

module "auth0" {
  source            = "../"
  auth0_domain     = "test.auth0.com"
  auth0_client_id  = "test_client_id"
  auth0_client_secret = "test_client_secret"
  tenant_name      = "Test Tenant"
  logo_url         = "https://test.com/logo.png"
  default_directory = "email"

  users = {
    user1 = {
      email      = "user1@test.com"
      password   = "TestPassword1"
      connection = "Username-Password-Authentication"
    }
  }

  groups = {
    group1 = {
      name        = "Test Group"
      description = "A group for testing"
    }
  }

  applications = {
    app1 = {
      name           = "Test Web App"
      type           = "web"
      callbacks      = ["https://test.com/callback"]
      allowed_origins = ["https://test.com"]
      client_id      = "test_client_id"
      client_secret  = "test_client_secret"
      token_endpoint = "https://test.com/token"
      logout_redirect_uri = "https://test.com/logout"
      api_identifier = "api.test.com"
      grant_types    = ["authorization_code"]
      is_first_party = true
      description    = "A test web application"
    }
  }
}