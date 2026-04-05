# Dependency Manifest Module

This module provides a Terraform template to create an AWS S3 bucket and upload a manifest file that outlines project dependencies such as Vue.js, TypeScript, AWS Lambda, and Docker.

## Usage

To use this module, include it in your Terraform configuration:

```hcl
module "dependency-manifest" {
  source = "./modules/dependency-manifest"
  env    = "dev"
}
```

This will create an S3 bucket named `dependency-manifest-dev` and upload the manifest file `manifest.json` into it.

## Output

The module exports the URL to the manifest file:

- `manifest_url` - The URL where the manifest file can be accessed.