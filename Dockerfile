FROM alpine:3.24.3

LABEL org.opencontainers.image.authors="Richard Kojedzinszky <richard@kojedz.in>"

RUN \
    apk --no-cache upgrade && \
    apk --no-cache add gettext mimalloc2 mimalloc2-insecure

COPY assets/ /

ENTRYPOINT ["/entrypoint.sh"]
