FROM debian:stable-slim
RUN apt-get update && \
    apt-get install -y wget git curl && \
    git clone https://github.com/OpenSourceLAN/gameservers-docker.git && \
    rm -r /var/lib/apt/lists/*

WORKDIR /gameservers-docker
CMD ./build.sh armagetron && /start_server armagetron

EXPOSE 4534