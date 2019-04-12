#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM ubuntu:16.04

# Install.
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git htop man unzip vim wget && \
  rm -rf /var/lib/apt/lists/*

RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update
# Install java
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get install -y openjdk-8-jdk
RUN update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java

RUN apt-get install dos2unix -y
  
# Add files.
#ADD root/.bashrc /root/.bashrc
##ADD root/.gitconfig /root/.gitconfig
#ADD root/.scripts /root/.scripts

# Set environment variables.
#ENV HOME /root

# Define working directory.
# WORKDIR /root

# Define default command.
CMD ["bash"]
