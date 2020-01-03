FROM alpine:latest

MAINTAINER krismorte <krisnamourt_ti@hotmail.com>

RUN apk add --no-cache \
    curl \
    git \
    make

RUN mkdir /src
WORKDIR /src
VOLUME /src

ENV VERSION 0.62.1
RUN mkdir -p /usr/local/src \
    && cd /usr/local/src \

    && curl -L https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_linux-64bit.tar.gz | tar -xz \
    && mv hugo /usr/local/bin/hugo


EXPOSE 1313