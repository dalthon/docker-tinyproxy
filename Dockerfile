FROM alpine

RUN set -xe && \
    apk add --no-cache tinyproxy && \
    sed -i -e '/^Allow /s/^/#/' \
           -e '/^ConnectPort /s/^/#/' \
           -e '/^#DisableViaHeader /s/^#//' \
           /etc/tinyproxy/tinyproxy.conf

EXPOSE 8888

CMD ["tinyproxy", "-d"]
