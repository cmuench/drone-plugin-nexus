FROM alpine

RUN apk -Uuv add curl ca-certificates

ADD plugin.sh /bin/
RUN chmod +x /bin/plugin.sh

ENTRYPOINT /bin/plugin.sh
