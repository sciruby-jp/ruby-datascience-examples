FROM andrewosh/binder-base

MAINTAINER Kozo Nishida <knishida@riken.jp>

USER root

RUN apt-get update
RUN apt-get install -y build-essential wget rake ruby ruby-dev libzmq3 libzmq3-dev gnuplot-nox libgsl0-dev libtool autoconf automake zlib1g-dev libatlas-base-dev && apt-get clean
RUN ln -s /usr/bin/libtoolize /usr/bin/libtool # See https://github.com/zeromq/libzmq/issues/1385

RUN gem update --no-document --system && gem install --no-document distribution daru iruby nyaplot pry rbczmq gnuplot
RUN wget https://github.com/ruby-numo/narray/archive/master.zip; unzip master.zip; cd narray-master; gem build numo-narray.gemspec; gem install numo-narray-0.9.0.2.gem

USER main

RUN iruby register
