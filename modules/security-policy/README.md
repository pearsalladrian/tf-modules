# Security Policy Module

This module creates an AWS Security Group with configurable rules for SSH, HTTP, and HTTPS access.

## Usage

```hcl
module "security-policy" {
  source = "./modules/security-policy"

  security_group_name = "web-app-sg"
  vpc_id            = "vpc-12345678"
  allow_ssh       = true
  allow_http      = true
  allow_https     = true
}
```

## Variables

- `security_group_name`: Name of the security group
- `vpc_id`: ID of the VPC
- `allow_ssh`: Whether to allow SSH access
- `allow_http`: Whether to allow HTTP access
- `allow_https`: Whether to allow HTTPS access

## Output

- `security_group_id`: ID of the created security group
