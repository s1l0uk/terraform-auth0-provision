variable "auth0_domain" {
  description = "Auth0 domain"
  type        = string
}

variable "auth0_client_id" {
  description = "Auth0 client ID"
  type        = string
}

variable "auth0_client_secret" {
  description = "Auth0 client secret"
  type        = string
}

variable "tenant_name" {
  description = "Name of the Auth0 tenant"
  type        = string
}

variable "logo_url" {
  description = "URL for tenant logo"
  type        = string
}

variable "default_directory" {
  description = "Default directory for users"
  type        = string
}