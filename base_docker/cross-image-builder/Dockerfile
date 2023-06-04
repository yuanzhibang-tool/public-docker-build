#用来调试的镜像,支持xdebug
FROM ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive

RUN echo 'start build'
RUN LC_ALL=C.UTF-8
#配置xdebug
RUN apt update
RUN apt upgrade -y
RUN apt install -y docker.io docker-compose wget
RUN wget https://static-david-health-cn.oss-cn-beijing.aliyuncs.com/script/docker/docker-buildx-plugin_0.10.5-1%7Eubuntu.22.04%7Ejammy_amd64.deb
RUN dpkg -i docker-buildx-plugin_0.10.5-1~ubuntu.22.04~jammy_amd64.deb
RUN apt-get install -y binfmt-support qemu-user-static
COPY scripts /scripts
RUN find /scripts -type f -iname "*.sh" -exec chmod +x {} \;
RUN mkdir -p /tmp/build
ENTRYPOINT cd /tmp/build && /scripts/build-in-docker.sh