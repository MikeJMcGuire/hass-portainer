ARG BUILD_FROM

FROM ${BUILD_FROM}

ENTRYPOINT ["/portainer", "--admin-password-file=/data/test", "--host unix:///var/run/docker.sock"]