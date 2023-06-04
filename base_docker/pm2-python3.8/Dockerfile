FROM python:3.8
ARG DEBIAN_FRONTEND=noninteractive
RUN echo 'start build'
RUN LC_ALL=C.UTF-8

RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -

RUN apt update
RUN apt upgrade -y
RUN apt-get install -y nodejs

RUN pip3 install --user pipenv -i https://mirrors.ustc.edu.cn/pypi/web/simple/
ENV PATH="$PATH:/root/.local/bin"

RUN npm config set registry https://registry.npmmirror.com
RUN npm install -g npm
RUN npm install -g pm2
RUN pm2 startup
RUN pm2 install pm2-logrotate
RUN pm2 set pm2-logrotate:max_size 50M
RUN pm2 set pm2-logrotate:retain 10
RUN pm2 set pm2-logrotate:compress true

ENTRYPOINT tail -f /dev/null
