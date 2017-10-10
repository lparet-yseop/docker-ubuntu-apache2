# docker-ubuntu-apache2

This is a simple Apache image.
Apache2 processe starts with Supervisord.

To use this image effectively, you'll need to mount:
/var/www/html for your site content (e.g. using "-v /home/lparet/mywebsite/:/var/www/html/")

You can overwrite the default apache config by adding:
- /etc/apache2/sites-enabled/000-default.conf
- ...
