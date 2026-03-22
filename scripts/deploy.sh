#!/bin/bash
set -euo pipefail
ENV="${1:-dev}"
echo "Deploying tf-modules infrastructure ($ENV)"
terraform init
terraform plan -var="environment=$ENV" -out=.tfplan
echo "Review the plan above, then run: terraform apply .tfplan"
