FROM ubuntu:16.04
LABEL Louis Paret <perso@louisparet.fr>

## Install packages
RUN apt-get update \
  && apt-get -y install \
    apache2 \
    supervisor \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

## Open ports
EXPOSE 80

## Add files
ADD ./files/ /

## CMD : Supervisor
CMD ["supervisord","-c","/etc/supervisord.conf"]
