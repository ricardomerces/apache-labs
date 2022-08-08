FROM ubuntu:18.04

RUN apt-get update && \
  apt-get -y install apache2

RUN rm -rf /var/lib/apt/lists/*

COPY src/ /var/www/html/

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]