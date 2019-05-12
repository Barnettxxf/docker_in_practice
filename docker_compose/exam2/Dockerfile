FROM ubuntu:14.04
COPY 30proxy /etc/apt/apt.conf.d/30proxy
RUN apt-get update && apt-get -y install rlwrap sqlite3 socat
EXPOSE 12345
