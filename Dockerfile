FROM ubuntu:latest
MAINTAINER Bibin Wilson
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get -y install mysql-client mysql-server curl
RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mys$
ENV user docker
ENV password root
ENV access WRITE
ADD ./start-database.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh
EXPOSE 3306
