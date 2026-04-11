module "security-policy" {
  source = "./modules/security-policy"

  security_group_name = "web-app-sg"
  vpc_id            = "vpc-12345678"
  allow_ssh       = true
  allow_http      = true
  allow_https     = true
}

resource "aws_security_group" "web_app_sg" {
  name        = var.security_group_name
  description = "Security group for web application"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

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
