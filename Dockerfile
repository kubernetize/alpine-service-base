FROM alpine:3.22.1

LABEL org.opencontainers.image.authors="Richard Kojedzinszky <richard@kojedz.in>"

RUN \
    apk --no-cache add gettext mimalloc2 mimalloc2-insecure

COPY assets/ /

ENTRYPOINT ["/entrypoint.sh"]
