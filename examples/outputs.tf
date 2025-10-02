output "active_password" {
  description = "Show the active password from the module"
  value       = module.passwords.active_password
  sensitive   = true
}

output "backup_password" {
  description = "Show the backup password from the module"
  value       = module.passwords.backup_password
  sensitive   = true
}