FROM ubuntu:focal
ARG TAGS
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y software-properties-common
RUN apt-add-repository -y ppa:ansible/ansible
RUN apt update && apt install -y sudo curl git ansible build-essential
RUN addgroup martin && useradd -rm -d /home/martin -s /bin/bash -g martin -G sudo -p "$(openssl passwd -1 ubuntu)" -u 1000 martin
USER martin
ENV USER=martin
WORKDIR /home/martin
