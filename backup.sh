#!/usr/bin/env bash
BACKUPNAME="/backup/email-archive-`date +%Y%m%d%H%M`.tgz"
docker run --rm --volumes-from email-archive -v ${HOME}/backup:/backup ubuntu tar cvzf ${BACKUPNAME} /dovecot_mail
