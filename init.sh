#/bin/sh

ADMIN_PW=$(jq -r .AdminPassword /data/options.json)
ADMIN_HASH=$(htpasswd -nbB admin $ADMIN_PW | cut -d ":" -f 2)

/opt/portainer/portainer --admin-password=\'$ADMIN_HASH\' --host=unix:///run/docker.sock
