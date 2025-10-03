FROM drupal:11-apache

ENV DRUPAL_DIR=/opt/drupal

WORKDIR ${DRUPAL_DIR}

COPY composer.json composer.lock .

RUN composer install

COPY web web

EXPOSE 80
