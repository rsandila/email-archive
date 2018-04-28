#!/usr/bin/env bash

if [ ! -f key.pem ]; then
  openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 365 -nodes -batch -subj '/CN=127.0.0.1'
fi
VERSION=`cat VERSION`
docker build -t rsandila2/email-archive:${VERSION} .
