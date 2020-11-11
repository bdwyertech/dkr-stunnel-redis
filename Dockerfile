FROM alpine:latest

RUN apk add ca-certificates stunnel

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]

LABEL org.opencontainers.image.title="bdwyertech/stunnel-redis" \
      org.opencontainers.image.version=$VCS_REF \
      org.opencontainers.image.description="Container for creating an STunnel for Redis" \
      org.opencontainers.image.authors="Brian Dwyer <bdwyertech@github.com>" \
      org.opencontainers.image.url="https://hub.docker.com/r/bdwyertech/stunnel-redis" \
      org.opencontainers.image.source="https://github.com/bdwyertech/dkr-stunnel-redis.git" \
      org.opencontainers.image.revision=$VCS_REF \
      org.opencontainers.image.created=$BUILD_DATE \
      org.label-schema.name="bdwyertech/stunnel-redis" \
      org.label-schema.description="Container for creating an STunnel for Redis" \
      org.label-schema.url="https://hub.docker.com/r/bdwyertech/stunnel-redis" \
      org.label-schema.vcs-url="https://github.com/bdwyertech/dkr-stunnel-redis.git"\
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.build-date=$BUILD_DATE
