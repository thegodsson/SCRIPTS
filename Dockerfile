FROM debian:stretch
MAINTAINER david
RUN apt-get update \
&& apt-get install -y vim openssh-server sudo python3 \
&& apt-get remove -y systemd \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
