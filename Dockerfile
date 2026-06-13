FROM ubuntu:24.04

ENV VNC_PORT=5901 \
    VNC_RESOLUTION=1024x640 \
    DISPLAY=:1 \
    TERM=xterm \
    DEBIAN_FRONTEND=noninteractive \
    HOME=/home/user \
    PATH=/opt/TurboVNC/bin:$PATH \
    SSH_PORT=22

EXPOSE $VNC_PORT
EXPOSE $SSH_PORT


RUN DEBIAN_FRONTEND=noninteractive apt-get update

RUN apt-get -y --no-install-recommends install \
	net-tools \
	iproute2  \
	tcpdump \
	telnet \
	traceroute \
	curl \
	iperf \
	knot-host \
	openssh-client \
	mtr-tiny \
	socat \
	nano \
	nmap \
	iputils-ping 

