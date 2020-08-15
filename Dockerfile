FROM httpd:2.4.46-alpine

MAINTAINER Griefed
LABEL maintainer="Griefed <griefed@griefed.de>"

RUN apk update && \
    apk upgrade && \
    apk add make && \
    apk add npm && \
    apk add git && \
    mkdir /composerize-website && \
    mkdir /git && \
    git clone https://github.com/magicmark/composerize.git /git && \
    cp -r /git/packages/composerize-website/. /composerize-website && \
    cd /composerize-website && \
    npm install yarn@1.19.1 -g && \
    yarn add composerize && \
    make build && \
    cp -r /composerize-website/build/. /usr/local/apache2/htdocs/ && \
    rm -rf /composerize-website && \
    rm -rf /git

WORKDIR /usr/local/apache2/htdocs/

EXPOSE 80
