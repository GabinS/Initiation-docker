FROM debian:stable-slim
RUN apt-get update && \
    apt-get install -y curl && \
    rm -r /var/lib/apt/lists/*

ENTRYPOINT [ "curl", "https://http.cat/402" ]