ARG BUILD_FROM

FROM ${BUILD_FROM}

RUN "echo test > /tmp/test"

ENTRYPOINT ["/portainer", "--admin-password-file /tmp/test", "--host unix:///var/run/docker.sock"]