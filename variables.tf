variable "project_name" {
  description = "Project identifier"
  type        = string
  default     = "tf-modules"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Must be dev, staging, or prod."
  }
}

variable "region" {
  description = "Cloud region"
  type        = string
  default     = "us-east-1"
}

variable "tags" {
  description = "Resource tags"
  type        = map(string)
  default     = {}
}
