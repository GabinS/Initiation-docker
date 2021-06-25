Correction TP1
==============

```bash
# Tester "docker --version"
docker --version

# Faire un Run de hello-world
docker run hello-world

# Faire tourner Apache (seul) en utilisant une image toute faite
docker run -d -p 8888:80 --rm httpd

# Faire tourner nginx en utilisant une image toute faite
docker run -d -p 8080:80 --rm nginx

# Faire tourner Wordpress en utilisant une image toute faite
docker run -p 8082:80 wordpress:php8.0-fpm-alpine
```
