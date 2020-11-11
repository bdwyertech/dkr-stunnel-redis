#!/bin/sh

ACCEPT_STRING=${ACCEPT_STRING:-127.0.0.1:6379}

if [ -z ${CONNECT_STRING} ]; then
    echo "Must Specify CONNECT_STRING variable" 1>&2
    echo "In format <host>:<port>" 1>&2
    exit 1
fi

cat << EOF > /etc/stunnel/redislabs.conf
cafile = /etc/ssl/certs/ca-certificates.crt
verify = 2
socket = l:TCP_NODELAY=1
socket = r:TCP_NODELAY=1
delay = yes
foreground=yes
[redislabs]
client = yes
accept = ${ACCEPT_STRING}
connect = ${CONNECT_STRING}
EOF

exec /usr/bin/stunnel /etc/stunnel/redislabs.conf
