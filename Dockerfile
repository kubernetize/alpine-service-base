FROM alpine:3.17.2

LABEL maintainer="Richard Kojedzinszky <richard@kojedz.in>"

RUN \
    apk --no-cache add gettext

COPY assets/ /

ENV \
    CONFIG_SOURCE_DIR=/config.source

ENTRYPOINT ["/entrypoint.sh"]
