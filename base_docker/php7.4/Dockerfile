FROM yuanzhibang/ubuntu20.04:default
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install curl -y
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt upgrade -y
RUN echo 'start build'
RUN LC_ALL=C.UTF-8

RUN apt install -y wget nodejs apache2 net-tools libapache2-mod-php7.4 php7.4 php7.4-redis php7.4-xml php7.4-readline php7.4-common php7.4-curl php7.4-mysql php7.4-pdo-mysql php7.4-mbstring php7.4-pdo php7.4-zip
RUN wget https://static-david-health-cn.oss-cn-beijing.aliyuncs.com/script/composer/composer.phar && mv composer.phar /usr/bin/composer && chmod +x /usr/bin/composer 
RUN npm config set registry https://registry.npmmirror.com
RUN npm install yarn -g
RUN a2enmod php7.4 ssl rewrite lbmethod_byrequests deflate expires proxy proxy_balancer proxy_connect proxy_ftp proxy_http
EXPOSE 80
# 前台执行apache2
ENTRYPOINT apachectl -D FOREGROUND
