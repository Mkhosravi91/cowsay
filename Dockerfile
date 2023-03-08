FROM --platform=linux/amd64 ubuntu:22.04

LABEL author="Mahsa-Khosravi" 
LABEL email="mahsa.khosravi69@gmail.com"
LABEL version="v1.0"
LABEL description="This is your first Dockerfile"
LABEL date_created="2022-05-13"
ARG DEBIAN_FRONTED=noninteractive
RUN apt-get update && apt-get install -y fortune cowsay lolcat

ENV PATH=/usr/games:${PATH}

ENV LC_ALL=C

ENTRYPOINT fortune | cowsay | lolcat
