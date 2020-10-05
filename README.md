# Composerize-Container
https://github.com/magicmark/composerize in a container!

![Docker Pulls](https://img.shields.io/docker/pulls/griefed/composerize?style=flat-square)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/griefed/composerize?label=Image%20size&sort=date&style=flat-square)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/griefed/composerize?label=Docker%20build&style=flat-square)
![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/griefed/composerize?label=Docker%20build&style=flat-square)
![GitHub Repo stars](https://img.shields.io/github/stars/Griefed/docker-Composerize?label=GitHub%20Stars&style=social)
![GitHub forks](https://img.shields.io/github/forks/Griefed/docker-Composerize?label=GitHub%20Forks&style=social)

Creates a Container which runs [magicmark's](https://github.com/magicmark/) [Composerize](https://github.com/magicmark/composerize), with [httpd:2.4.46-alpine image](https://hub.docker.com/_/httpd) as the base image, as seen on https://www.composerize.com/


# Deploy with docker-compose:
```
  composerize:
    container_name: composerize
    image: griefed/composerize
    restart: unless-stopped
    ports:
      - 80:80
```
### Deploy on Rasbperry Pi
Using the Dockerfile, this container can be built and run on a Raspberry Pi, too! I've tested it on a Raspberry Pi 3B+.
Simply put the Dockerfile in a directory called `composerize` in the same directory as your docker-compose.yml, edit your docker-compose.yml:
```
  composerize:
    container_name: composerize
    build: ./composerize/
    restart: unless-stopped
    ports:
      - 80:80
```
Then build with:
```
docker-compose up -d --build composerize
```
![Composerize](https://i.imgur.com/CvP7TUt.png)

