# alpine-service-base

Base image for Alpine based service images.

The entrypoint will process elements listed in environment variable `CONFIG_SOURCE_FILES`. Each element has the format `<src>:<dst>`, where `src` is relative to environment variable `CONFIG_SOURCE_DIR`. The process means copying `src` over `dst`, if `src` exists. If `<src>.envsubst` exists, `envsubst` is used to replace environment variables in the source file.

`CONFIG_SOURCE_DIR` defaults to `/config.source`.

For exact operation, see [entrypoint.sh](assets/entrypoiny.sh).