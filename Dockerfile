FROM alpine:3.19.1

LABEL org.opencontainers.image.authors="Richard Kojedzinszky <richard@kojedz.in>"

RUN \
    apk --no-cache add gettext

COPY assets/ /

ENV \
    CONFIG_SOURCE_DIR=/config.source

ENTRYPOINT ["/entrypoint.sh"]
