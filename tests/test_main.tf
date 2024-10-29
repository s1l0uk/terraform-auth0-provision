output "client_ids" {
  description = "List of created client IDs"
  value       = [for client in auth0_client.clients : client.id]
}