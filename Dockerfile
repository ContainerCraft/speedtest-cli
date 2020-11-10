FROM alpine:latest

#COPY entrypoint /entrypoint
RUN set -ex \
     && apk add --no-cache ca-certificates python3 py3-pip \
     && pip install --upgrade pip \
     && pip install speedtest-cli \
    && echo

ENTRYPOINT /bin/sh /usr/bin/speedtest-cli --share
