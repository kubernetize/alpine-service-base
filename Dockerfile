FROM alpine:3.16

LABEL maintainer="Richard Kojedzinszky <richard@kojedz.in>"

RUN \
    apk --no-cache add gettext

COPY assets/ /

ENV \
    CONFIG_SOURCE_DIR=/config.source

ENTRYPOINT ["/entrypoint.sh"]
