FROM yuanzhibang/ubuntu20.04:default
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt upgrade -y
RUN apt install apache2 unzip -y
RUN echo 'start build'
RUN LC_ALL=C.UTF-8
#更新软件源
RUN a2enmod ssl rewrite lbmethod_byrequests deflate expires proxy proxy_balancer proxy_connect proxy_ftp proxy_http
EXPOSE 80
# 前台执行apache2
ENTRYPOINT apachectl -D FOREGROUND
