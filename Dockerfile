FROM debian:wheezy
MAINTAINER Zack Yang <zackcf.yang@moxa.com>

# Install basic stuff
RUN apt-get update
RUN apt-get -y --force-yes install git curl wget python
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get -y install nodejs
RUN npm install -g bower grunt-cli gulp

CMD ["/bin/bash"]
