FROM centos:centos8.2.2004
RUN  yum -y install gcc openssl-devel bzip2-devel libffi-devel zlib-devel
WORKDIR /usr/src
RUN yum -y install wget
RUN wget https://www.python.org/ftp/python/3.7.9/Python-3.7.9.tgz
RUN tar xzf Python-3.7.9.tgz
WORKDIR /usr/src/Python-3.7.9
RUN ./configure --enable-optimizations
RUN yum -y install make
RUN make altinstall
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3.7 get-pip.py