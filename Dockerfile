FROM debian:wheezy
MAINTAINER Zack Yang <zackcf.yang@moxa.com>

# Install basic stuff
RUN apt-get update
RUN apt-get -y --force-yes install git curl wget python procps

# Install ruby stuff
RUN /bin/bash -c "curl -L https://get.rvm.io | bash -s stable --ruby && source /etc/profile.d/rvm.sh && rvm install ruby --latest && gem install compass"

# Install node stuff
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get -y install nodejs
RUN npm install -g yo bower grunt-cli

CMD ["/bin/bash"]
