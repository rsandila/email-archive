#!/bin/sh

sed -i s/IMAPSERVER/${IMAPSERVER}/g /etc/dovecot/dovecot.conf
/usr/sbin/rsyslogd
chmod 0777 /dovecot_mail
/usr/sbin/dovecot -F
