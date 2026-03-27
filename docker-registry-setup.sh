#!/bin/bash

# Create a self-signed SSL certificate for the Docker registry
openssl req -newkey rsa:4096 -nodes -sha256 -keyout registry.key -x509 -days 365 -out registry.crt

# Create a directory for registry data
mkdir -p docker-registry-data

# Start the Docker registry with HTTPS
# Replace 'your_domain.com' with your actual domain
docker run -d -p 5000:5000 --restart=always --name registry \n  -v $(pwd)/docker-registry-data:/var/lib/registry \n  -v $(pwd)/registry.crt:/etc/ssl/certs/registry.crt \n  -v $(pwd)/registry.key:/etc/ssl/private/registry.key \n  -e REGISTRY_HTTP_TLS_CERTIFICATE=/etc/ssl/certs/registry.crt \n  -e REGISTRY_HTTP_TLS_KEY=/etc/ssl/private/registry.key \n  registry:2

# After starting, you can push and pull images with:
# docker push your_domain.com:5000/your-image
# docker pull your_domain.com:5000/your-image