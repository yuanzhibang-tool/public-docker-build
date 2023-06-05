FROM yuanzhibang/ubuntu20.04:default
ARG DEBIAN_FRONTEND=noninteractive
RUN echo 'start build'
RUN LC_ALL=C.UTF-8
RUN apt update
RUN apt upgrade -y
RUN apt -y install python3.8 python3-pip python3.8-dev  libglib2.0-dev
RUN pip3 install --user pipenv -i https://mirrors.ustc.edu.cn/pypi/web/simple/
RUN echo "PYTHON_BIN_PATH=\"\$(python3 -m site --user-base)/bin\"\nPATH=\"\$PATH:\$PYTHON_BIN_PATH\"" >> ~/.bashrc
RUN echo "PYTHON_BIN_PATH=\"\$(python3 -m site --user-base)/bin\"\nPATH=\"\$PATH:\$PYTHON_BIN_PATH\"" >> ~/.profile
ENV PATH="$PATH:/root/.local/bin"