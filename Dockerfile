FROM ubuntu:20.04
MAINTAINER Ted <wenjun.wang@rakuten.com>

RUN apt-get update && \
    apt-get install -y sarg nginx vim && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY nginx.conf /etc/nginx/nginx.conf
COPY sarg.conf /etc/sarg/sarg.conf

WORKDIR /log
VOLUME ["/log"]
CMD ["nginx"]
