From ubuntu:18.04

MAINTAINER Carlo de los Angeles <carlo.delosangeles@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

#update and upgrade
RUN apt-get update
RUN apt-get upgrade -y

#install dependencies
RUN apt-get install -y -q build-essential ruby-dev python python-docutils ruby-bundler libicu-dev libreadline-dev libssl-dev zlib1g-dev git-core

# Install gollum
RUN gem install gollum redcarpet github-markdown

#clean up install
RUN apt-get clean
RUN rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

#git clone wiki data
#RUN git config --global url."https://df4617bc49281a8c22a03298f10336c41ddf1500:@github.com/".insteadOf"https:/github.com/"
#RUN git clone https://github.com/cdla/neurowiki-docs /docs

EXPOSE 4567

ENTRYPOINT ["gollum", "/docs"]