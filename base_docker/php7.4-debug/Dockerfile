FROM yuanzhibang/php7.4:default
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt upgrade -y
RUN echo 'start build'
RUN LC_ALL=C.UTF-8

RUN apt install -y git php7.4-xdebug iputils-ping docker docker-compose
RUN echo '[XDebug]' >> /etc/php/7.4/apache2/php.ini && echo "xdebug.remote_enable = 1" >> /etc/php/7.4/apache2/php.ini && echo "xdebug.remote_autostart = 1" >> /etc/php/7.4/apache2/php.ini && echo "xdebug.remote_port = 9000" >> /etc/php/7.4/apache2/php.ini

RUN git config --global http.proxyAuthMethod 'basic'

EXPOSE 80
# 前台执行apache2
ENTRYPOINT apachectl -D FOREGROUND
