FROM debian:stable-slim

RUN apt-get update && \
    apt-get install -y jq curl && \
    rm -r /var/lib/apt/lists/*

CMD curl "https://raw.githubusercontent.com/jponcy/fake-game-api/master/assets/merged.json" | jq .
