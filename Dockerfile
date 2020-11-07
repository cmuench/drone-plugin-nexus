FROM alpine

RUN apk -Uuv add curl ca-certificates file

ADD plugin.sh /bin/
RUN chmod +x /bin/plugin.sh

ENTRYPOINT /bin/plugin.sh
