ARG BUILD_FROM=alpine:latest

FROM ${BUILD_FROM}

RUN apk add --no-cache curl jq apache2-utils

RUN curl -L -s "https://github.com/portainer/portainer/releases/download/2.1.1/portainer-2.1.1-linux-amd64.tar.gz" | tar zxvf - -C /opt/

COPY /init.sh /

RUN chmod +x /init.sh

ENTRYPOINT ["sh", "/init.sh"]
