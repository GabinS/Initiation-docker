FROM debian:stable-slim
RUN apt-get update && \
    apt-get install -y apache2 && \
    rm -r /var/lib/apt/lists/*

RUN service apache2 start
EXPOSE 80

