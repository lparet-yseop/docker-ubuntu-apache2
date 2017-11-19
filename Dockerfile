FROM ubuntu:16.04
LABEL Louis Paret <perso@louisparet.fr>

## Install packages
RUN apt-get update \
  && apt-get -y install \
    apache2 \
    supervisor \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

## Env variables for Apache
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

## Open ports
EXPOSE 80
EXPOSE 443

## Add files
ADD ./files/ /

## CMD : Supervisor
CMD ["supervisord","-c","/etc/supervisord.conf"]
