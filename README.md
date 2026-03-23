# tf-modules

A collection of opinionated Terraform modules I use across projects.

## Modules

| Module | Description |
|--------|------------|
| `modules/vpc` | VPC with public/private subnets, NAT gateway |
| `modules/lambda-api` | API Gateway + Lambda with custom domain |
| `modules/s3-static` | S3 + CloudFront for static site hosting |

## Usage

```hcl
module "vpc" {
  source = "github.com/pearsalladrian/tf-modules//modules/vpc"

  project_name = "my-app"
  aws_region   = "us-east-1"
  cidr_block   = "10.0.0.0/16"
}
```

## Requirements

- Terraform >= 1.5
- AWS CLI configured

## License

MIT
