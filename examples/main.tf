terraform {
  required_version = ">= 1.3.0"

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = ">= 3.5.0"
    }
  }
}

module "passwords" {
  
  source = "../module/rotatePassword/"
  force_rotate_active = false
  rotate_backup = false
}

