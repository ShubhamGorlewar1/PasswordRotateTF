resource "random_password" "active" {
  length  = var.password_length
  special = var.include_special
  upper   = var.include_upper
  lower   = var.include_lower
  numeric = var.include_numeric

  keepers = {
    force = var.force_rotate_active ? timestamp(): "keep"
  }
}

resource "random_password" "backup" {
  length  = var.password_length
  special = var.include_special
  upper   = var.include_upper
  lower   = var.include_lower
  numeric = var.include_numeric

   keepers = {
    rotate = var.rotate_backup ? "rotate-${timestamp()}" : "stable"
  }
}

locals {
  passwords = {
    active = var.swap ? random_password.backup.result : random_password.active.result
    backup = var.swap ? random_password.active.result : random_password.backup.result
  }
}
