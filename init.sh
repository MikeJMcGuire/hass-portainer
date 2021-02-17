#/bin/sh

ADMIN_PW=$(jq -r .AdminPassword /data/options.json | htpasswd -nbiB admin | cut -d ":" -f 2)

/opt/portainer/portainer --admin-password=\'$ADMIN_PW\' --host=unix:///run/docker.sock
