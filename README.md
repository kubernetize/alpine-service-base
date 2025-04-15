# alpine-service-base

Base image for Alpine based service images.

The image simply walks files under /entrypoint.d/, and sources .sh files and executes others. See default files under [entrypoint.d](assets/entrypoint.d). Finally it executes the command line.

When extending the image, files can be placed under /entrypoint.d to alter or extend image startup process.
