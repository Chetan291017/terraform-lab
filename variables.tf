variable "target_host" {
  description = "Target VM IP or hostname"
  type        = string
}

variable "ssh_user" {
  description = "SSH username for target VM"
  type        = string
}

variable "private_key_path" {
  description = "Path to private SSH key"
  type        = string
}
