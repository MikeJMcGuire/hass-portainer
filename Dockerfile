ARG BUILD_FROM

FROM ${BUILD_FROM}

ENTRYPOINT ["/portainer", "--admin-password-file=/data/test", "--host=unix:///run/docker.sock"]