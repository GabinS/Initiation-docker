FROM debian:stable-slim
RUN apt-get update && \
    apt-get install -y nodejs && \
    apt-get install -y npm && \
    npm install -g npm@6.14.11 && \
    apt-get install -y git && \
    git clone https://github.com/jponcy/fake-game-api && \
    rm -r /var/lib/apt/lists/*

WORKDIR /fake-game-api
RUN npm install --production

EXPOSE 3000

ENTRYPOINT [ "npx", "json-server", "assets/merged.json", "--host", "0.0.0.0" ]