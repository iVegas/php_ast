FROM php:8.1-cli-alpine

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/
RUN apk update && \
    apk add git && \
    install-php-extensions @composer ast gd zip
ENV COMPOSER_ALLOW_SUPERUSER=1
