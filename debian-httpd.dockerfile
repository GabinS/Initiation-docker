FROM httpd:latest
RUN apt-get update && \
    apt-get install -y apache2 && \
    rm -r /var/lib/apt/lists/*

WORKDIR /mini-site

COPY ./mini-site/ /usr/local/apache2/htdocs/

EXPOSE 80
EXPOSE 443