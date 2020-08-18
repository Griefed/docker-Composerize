# Composerize-Container
https://github.com/magicmark/composerize in a container!

# Deploy with docker-compose:
```
  composerize:
    container_name: composerize
    image: griefed/composerize
    restart: unless-stopped
    ports:
      - 80:80
```

![Composerize](https://i.imgur.com/CvP7TUt.png)

Creates a Container which runs [magicmark's](https://github.com/magicmark/) [Composerize](https://github.com/magicmark/composerize), with [httpd:2.4.46-alpine image](https://hub.docker.com/_/httpd) as the base image, as seen on https://www.composerize.com/
