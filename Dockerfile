FROM php:7.4-alpine

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN COMPOSER_HOME="/composer" composer global require --prefer-dist --no-progress --dev squizlabs/php_codesniffer:3.5.8
RUN COMPOSER_HOME="/composer" composer global require --prefer-dist --no-progress --dev slevomat/coding-standard:6.4.1

ENV PATH /composer/vendor/bin:${PATH}

WORKDIR "/app"
