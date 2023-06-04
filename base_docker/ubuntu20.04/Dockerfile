FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
RUN echo 'start build'
RUN LC_ALL=C.UTF-8
RUN sed -i 's@//.*archive.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list
RUN sed -i 's@//.*ports.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list
RUN apt update
RUN apt upgrade -y