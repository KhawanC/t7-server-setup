# T7 (AS I KNOW) ONLY WORKS ON UBUNTU 22.04
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_FRONTEND teletype

RUN apt update -y && \
    apt upgrade -y && \
    DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata && \
    apt install -y git && \
    apt install -y expect && \
    apt install -y sudo && \
    apt install -y curl && \
    apt clean

WORKDIR /t7

COPY ./t7-scripts /t7

RUN chmod +x server_files_downloader.sh && \
    ./server_files_downloader.sh && \
    chmod +x UnrankedServer/BOIII_Server.sh

EXPOSE 27017

RUN ["bash"]