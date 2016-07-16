FROM andrewosh/binder-base

MAINTAINER Kozo Nishida <knishida@riken.jp>

USER root

RUN apt-get update
RUN apt-get install -y build-essential ruby ruby-dev libzmq3 libzmq3-dev gnuplot-nox libgsl0-dev libtool autoconf automake zlib1g-dev libatlas-base-dev && apt-get clean
RUN ln -s /usr/bin/libtoolize /usr/bin/libtool # See https://github.com/zeromq/libzmq/issues/1385

RUN gem update --no-document --system && gem install --no-document daru iruby nyaplot pry rbczmq gnuplot

USER main

RUN iruby register
