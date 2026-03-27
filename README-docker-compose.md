# Docker-Compose Setup for tf-modules

This guide outlines the setup of a multi-container environment using Docker Compose for the `tf-modules` project.

## Prerequisites
- Docker and Docker Compose installed on your system
- Terraform modules in the `terraform/` directory
- Lambda function code in the `lambda/` directory
- Vue.js application in the `vue-app/` directory

## Steps to Setup
1. Copy the contents of this `docker-compose.yml` file into your project root
2. Replace `your_aws_key` and `your_aws_secret` with valid AWS credentials
3. Ensure all required directories (`terraform`, `lambda`, `vue-app`) exist with the correct files
4. Run `docker-compose up` to start all services

## Services Overview
- **terraform**: Runs Terraform to apply infrastructure as code (IAC) definitions
- **lambda**: Hosts the Lambda function for serverless computing
- **vue-app**: Serves the Vue.js frontend application
- **docker-registry**: Internal Docker registry for private image storage

## Notes
- The Terraform container assumes that your IAC definitions are in the `terraform/` folder
- The Lambda service is based on the Python 3.9 runtime from AWS ECR
- The Vue.js app is served using NGINX, assuming the app is built and placed in the `vue-app/` folder