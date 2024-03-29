FROM centos:7
MAINTAINER Ekaterina Gruzdova

# Set arguments for proxy environment
ARG proxy
ENV http_proxy=$proxy
ENV ftp_proxy=$proxy
ENV https_proxy=$proxy

ENV HTTP_PROXY=$proxy
ENV FTP_PROXY=$proxy
ENV HTTPS_PROXY=$proxy

# Install system libraries
RUN yum install -y glibc libc.so.6 libgcc libgcc_s.so.1 libstdc++ libstdc++.so.6 yum-utils

# Copy files from local directory
ADD ./TeradataToolsAndUtilitiesBase__linux_*.tar.gz /tmp

# Python 3.6
RUN yum install -y https://centos7.iuscommunity.org/ius-release.rpm \
    && yum update -y \
    && yum install -y python36u python36u-libs python36u-devel python36u-pip \
    && python3.6 -m pip install --upgrade pip
