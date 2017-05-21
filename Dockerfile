FROM sciruby/iruby-notebook

MAINTAINER Kozo Nishida <knishida@riken.jp>

ADD . /workdir
WORKDIR /workdir

USER root

RUN cd /workdir && gem install specific_install statsample && \
    gem specific_install https://github.com/ruby-numo/narray.git && \
    chown -R jovyan:users /workdir
