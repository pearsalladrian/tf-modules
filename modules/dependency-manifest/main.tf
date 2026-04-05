resource "aws_s3_bucket" "dependency_manifest" {
  bucket = "dependency-manifest-${var.env}" 
  acl    = "private"

  tags = {
    Name        = "dependency-manifest"
    Environment = var.env
  }
}

resource "aws_s3_bucket_object" "manifest_file" {
  bucket = aws_s3_bucket.dependency_manifest.id
  key    = "manifest.json"
  source = "${path.root}/modules/dependency-manifest/manifest.json"
  etag   = filemd5("${path.root}/modules/dependency-manifest/manifest.json")
}

variable "env" {
  description = "The environment for the dependency manifest"
  default     = "dev"
}

output "manifest_url" {
  value = "https://${aws_s3_bucket.dependency_manifest.id}.s3.amazonaws.com/manifest.json"
}