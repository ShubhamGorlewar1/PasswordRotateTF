variable "password_length" {
  description = "Length of the generated passwords"
  type        = number
  default     = 20
}

variable "rotate_backup" {
  description = "Set true to regenerate only the backup password"
  type        = bool
  default     = false
}

variable "swap" {
  description = "Swap active and backup passwords"
  type        = bool
  default     = false
}

variable "force_rotate_active" {
  description = "Force regeneration of the active password (should be rarely used)"
  type        = bool
  default     = false
}
