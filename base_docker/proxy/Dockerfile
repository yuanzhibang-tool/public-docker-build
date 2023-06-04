FROM yuanzhibang/ubuntu20.04:default
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt upgrade -y
RUN echo 'start build'
RUN LC_ALL=C.UTF-8

RUN apt install -y apache2 libaprutil1-dbd-mysql

RUN a2enmod ssl dbd authn_dbd rewrite lbmethod_byrequests deflate expires proxy proxy_balancer proxy_connect proxy_ftp proxy_http headers
# 前台执行apache2
ENTRYPOINT apachectl -D FOREGROUND
