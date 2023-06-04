#用来调试的镜像,支持xdebug
FROM yuanzhibang/ubuntu20.04:default
ARG DEBIAN_FRONTEND=noninteractive

RUN echo 'start build'
RUN LC_ALL=C.UTF-8
#配置xdebug
RUN apt update
RUN apt upgrade -y
RUN apt install -y php composer nodejs npm python3 python3-pip
RUN npm config set registry https://registry.npmmirror.com
RUN npm install -g npm
RUN npm install -g pm2
RUN pm2 startup
RUN pm2 install pm2-logrotate
RUN pm2 set pm2-logrotate:max_size 50M
RUN pm2 set pm2-logrotate:retain 10
RUN pm2 set pm2-logrotate:compress true
