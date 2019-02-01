FROM debian:testing
MAINTAINER Sebastian Schweizer <sebastian@schweizer.tel>

RUN apt-get update -qq -y \
 && apt-get install texlive-full -y \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
