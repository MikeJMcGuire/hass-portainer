ARG BUILD_FROM

FROM ${BUILD_FROM}

ENTRYPOINT ["/portainer", "--data /data", "--no-auth", "--host unix:///var/run/docker.sock"]