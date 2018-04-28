#!/usr/bin/env bash

if [ -z "`docker volume ls -f name=email-archive | grep -v DRIVER`" ]; then
  echo "Creating volume"
  docker volume create email-archive
fi
VERSION=`cat VERSION`
docker run -p 143:143 --mount source=email-archive,target=/dovecot_mail \
  --restart unless-stopped --name email-archive --detach \
  rsandila2/email-archive:${VERSION}
