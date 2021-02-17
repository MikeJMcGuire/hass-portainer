#/bin/sh

echo portainer > /tmp/initialpassword

/opt/portainer/portainer --admin-password-file=/tmp/initialpassword --host=unix:///run/docker.sock
