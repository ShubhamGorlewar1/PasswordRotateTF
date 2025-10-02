output "active_password" {
  value     = local.passwords.active
  sensitive = true
}

output "backup_password" {
  value     = local.passwords.backup
  sensitive = true
}
