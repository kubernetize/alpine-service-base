FROM alpine:3.21.3

LABEL org.opencontainers.image.authors="Richard Kojedzinszky <richard@kojedz.in>"

RUN \
    apk --no-cache add gettext

COPY assets/ /

ENTRYPOINT ["/entrypoint.sh"]
