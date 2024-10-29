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

variable "users" {
  description = "Map of users to create"
  type        = map(object({
    email      = string
    password   = string
    connection = string
  }))
}

variable "groups" {
  description = "Map of groups to create"
  type        = map(object({
    name        = string
    description = string
  }))
}

variable "applications" {
  description = "Map of applications to create"
  type        = map(object({
    name             = string
    type             = string
    callbacks        = optional(list(string))
    allowed_origins  = optional(list(string))
    client_id        = optional(string)
    client_secret    = optional(string)
    token_endpoint    = optional(string)
    logout_redirect_uri = optional(string)
    api_identifier   = optional(string)
    grant_types      = optional(list(string))
    is_first_party   = optional(bool)
    description      = optional(string)
  }))
}