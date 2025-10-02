variable "password_length" {
  description = "Length of the generated passwords"
  type        = number
  default     = 20
}

variable "rotate_backup" {
  description = "Set to true to regenerate the backup password"
  type        = bool
  default     = false
}

variable "swap" {
  description = "Swap active and backup passwords"
  type        = bool
  default     = false
}

variable "force_rotate_active" {
  description = "Force regeneration of the active password (use sparingly)"
  type        = bool
  default     = false
}

variable "include_special" {
  description = "Include special characters in the password"
  type        = bool
  default     = true
}

variable "include_upper" {
  description = "Include uppercase characters in the password"
  type        = bool
  default     = true
}

variable "include_lower" {
  description = "Include lowercase characters in the password"
  type        = bool
  default     = true
}

variable "include_numeric" {
  description = "Include numeric characters in the password"
  type        = bool
  default     = true
}
