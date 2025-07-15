output "management_lock_id" {
  description = "The ID of the management lock."
  value       = azapi_resource.management_lock.id
}

output "management_lock_name" {
  description = "The name of the management lock."
  value       = azapi_resource.management_lock.name
}

output "management_lock_level" {
  description = "The level of the management lock."
  value       = var.lock_level
}
