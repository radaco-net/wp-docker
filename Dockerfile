FROM wordpress:latest

# Install additional dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        libxml2-dev

# Enable SOAP extension
RUN docker-php-ext-install soap

# Clean up
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Continue with other instructions in your Dockerfile

