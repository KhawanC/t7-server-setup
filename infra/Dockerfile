# T7 (AS I KNOW) ONLY WORKS ON UBUNTU 22.04
FROM ubuntu:22.04

# Atualizar o sistema e instalar Git
RUN apt-get update && \
    apt-get install -y git && \
    apt-get install -y expect && \
    apt-get clean

RUN git clone git@github.com:KhawanC/t7-server-setup.git

WORKDIR /t7-server-setup

RUN chmod +x server_files_downloader.sh && \
    ./server_files_downloader.sh && \
    chmod +x UnrankedServer/BOIII_Server.sh

EXPOSE 27017

CMD ["./UnrankedServer/BOIII_Server.sh"]