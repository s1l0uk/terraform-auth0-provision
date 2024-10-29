output "tenant_id" {
  description = "The ID of the created Auth0 tenant"
  value       = auth0_tenant.example.id
}

output "user_ids" {
  description = "List of created user IDs"
  value       = [for user in auth0_user.users : user.id]
}

output "group_ids" {
  description = "List of created group IDs"
  value       = [for group in auth0_group.groups : group.id]
}

output "application_ids" {
  description = "List of created application IDs"
  value       = [for app in auth0_application.applications : app.id]
}