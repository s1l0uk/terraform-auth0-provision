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
}