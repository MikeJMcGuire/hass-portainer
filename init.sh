#/bin/sh

echo portainer > /tmp/initial

/opt/portainer/portainer --admin-password-file=/tmp/initial --host=unix:///run/docker.sock
