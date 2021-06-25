FROM debian:stable-slim
RUN apt-get update && \
    apt-get install -y apache2 && \
    rm -r /var/lib/apt/lists/*
EXPOSE 80
EXPOSE 443
CMD service apache2 start; tail -f /var/log/apache2/error.log

# Build avec docker build -t my-apache:latest -f apache.dockerfile .
# Exemple de lancementd e container : docker run --name my-apache --rm -d -p 8081:80 my-apache
