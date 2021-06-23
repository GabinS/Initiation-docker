# Initiation-docker (je suis sur linux)
## Les bases de docker

- [x] Installer Docker
- [x] Tester "docker --version"
- [x] Faire un Run de hello-world
- [x] Faire tourner Apache (seul) en utilisant une image toute faite
```
docker run -d --name mon-apache -p 8080:80 httpd
```
- [x] Faire tourner nginx en utilisant une image toute faite
```
docker run -d --name mon-nginx -p 8081:80  nginx
```
- [x] Faire tourner Wordpress en utilisant une image toute faite
```
docker run -d --name mon-wordpress -p 8082:80 wordpress
```
- [x] installer ghost
```
docker run -d --name mon-ghost -e url=http://localhost:3001 -p 3001:2368 ghost
```
