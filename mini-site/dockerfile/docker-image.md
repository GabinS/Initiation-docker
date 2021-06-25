Création d'une image à partir d'un dockerfile
---------------------------------------------

### Premier Dockerfile

Dockerfile:
```dockerfile
# image d'origine (il est recommandé de se baser sur des images déjà existantes ; encore mieux, des images officielles).
FROM debian:stable-slim

# Lancement d'une commande au moment de la création de l'image
RUN echo "Hello world!"
```

Générer l'image avec (si dans le même dossier) :
```bash
# docker build -t my-deb:v2 -t my-deb:latest .
```
