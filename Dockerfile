FROM kozo2/iruby-notebook

MAINTAINER Kozo Nishida <knishida@riken.jp>

ADD . /workdir
WORKDIR /workdir

USER root

RUN cd /workdir && gem install specific_install daru rbplotly && \
    gem specific_install https://github.com/ruby-numo/narray.git && \
    chown -R jovyan:users /workdir
    
