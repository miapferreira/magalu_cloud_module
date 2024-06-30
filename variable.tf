variable "name" {
  description = "Name of the instance"
  type        = string
}

variable "environment" {
  description = "Environment of the instance"
  type        = string
  default     = "dev"
}

variable "ssh_key_name" {
  description = "SSH key name"
  type        = string
  default     = "magalu"
}

variable "machine_type" {
  description = "Machine type"
  type        = string
}

variable "associate_public_ip" {
  description = "Associate public IP"
  type        = bool
  default     = false
}

variable "password" {
  description = "Password"
  type        = string
  sensitive   = true
}

variable "user" {
  description = "User"
  type        = string
}