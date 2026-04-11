variable "security_group_name" {
  description = "Name of the security group"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "allow_ssh" {
  description = "Whether to allow SSH access"
  type        = bool
  default     = false
}

variable "allow_http" {
  description = "Whether to allow HTTP access"
  type        = bool
  default     = false
}

variable "allow_https" {
  description = "Whether to allow HTTPS access"
  type        = bool
  default     = false
}
