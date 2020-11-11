FROM alpine:latest

RUN apk add ca-certificates stunnel

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]
