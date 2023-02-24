FROM webdevops/php-nginx:8.2-alpine

ENV WEB_DOCUMENT_ROOT=/app/public

COPY . /app
COPY ./docker /opt/docker

WORKDIR /app

RUN composer install --no-interaction --optimize-autoloader --no-dev

RUN chown -R application:application /app
