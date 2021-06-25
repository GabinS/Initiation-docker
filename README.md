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

- [x] Faire tourner Ghost en utilisant une image toute faite

```
docker run -d --name mon-ghost -e url=http://localhost:3001 -p 3001:2368 ghost
```
## Docker Files

Build : création d'image

```
docker build -t ImageName:TagName DIR

# exemple :
docker build -t my-deb:latest .
```
ImageName => le nom finale de l'image (en locale pour l'instant)
TagName => le nom du tag (souvent simplement un nom de version, mais décrit parfois aussi des altérnatives)
DIR => le répertoire où trouver le fichier Dockerfile (. par défaut)

## TP Dockerfiles

1. une image basée sur debian avec curl installé en plus

Fichier : debian-curl.dockerfile

```
docker build -t debian-curl:latest -f debian-curl.dockerfile .
```

2. l'image précédente lancera une requête curl sur l'url https://http.cat/404 au lancement du container (runtime)

```
docker run --rm debian-curl > cat.png
```

3. une image basée sur debian qui clone/installe/lance l'application nodejs suivante : https://github.com/jponcy/fake-game-api

Fichier : debian-node.dockerfile

```
docker build -t debian-node:latest -f debian-node.dockerfile .
docker run -it --rm -p 3000:3000 debian-node
```

4. une image basée sur debian installant la librairie jq ; cette dernière permettra de formatter un retour de l'API précédente

Fichier : debian-jq.dockerfile

```
docker build -t debian-jq:latest -f debian-jq.dockerfile .
docker run -it --rm debian-jq
```

5. une image basée sur debian installant la librairie jq ; cette dernière permettra de formatter un retour de l'API précédente

Fichier : debian-httpd.dockerfile

```
docker build -t debian-httpd:latest -f debian-httpd.dockerfile .
docker run -it --rm -p 8081:80 debian-httpd
```


6. créer une nouvelle image basée sur httpd qui distribue le mini-site fait dans les TP précédents (TP volumes)
(bonus) une image basée sur debian configurant une base de données MySQL et un Wordpress

Fichier : debian-wordpress.dockerfile

```
docker build --build-arg db_root_pw=root --build-arg db_name=mydb --build-arg db_username=admin --build-arg db_pw=password -t my-debian-wordpress -f debian-wordpress.dockerfile .

##RUN option 1
docker run -it --rm -p 8084:80 my-debian-wordpress

##RUN option 2
docker run --name my-sql -e MYSQL_ROOT_PASSWORD=password -e WORDPRESS_HOST_ADDRESS=http://localhost:8084 my-debian-wordpress

```
