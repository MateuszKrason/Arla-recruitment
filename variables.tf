variable "subscription_id" {
  description = "The subscription ID where the resource group exists."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the management lock will be applied."
  type        = string
}

variable "lock_name" {
  description = "The name of the management lock."
  type        = string
}

variable "lock_level" {
  description = "The level of the lock. Possible values: 'CanNotDelete' and 'ReadOnly'."
  type        = string
  validation {
    condition     = contains(["CanNotDelete", "ReadOnly"], var.lock_level)
    error_message = "The lock_level must be either 'CanNotDelete' or 'ReadOnly'."
  }
}

variable "notes" {
  description = "Optional notes about the management lock."
  type        = string
  default     = null
}
