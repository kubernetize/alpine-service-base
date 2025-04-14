FROM alpine:3.21.3

LABEL org.opencontainers.image.authors="Richard Kojedzinszky <richard@kojedz.in>"

RUN \
    apk --no-cache add gettext

COPY assets/ /

ENTRYPOINT ["/usr/local/sbin/entrypoint.service-base.sh"]
