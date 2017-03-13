FROM sciruby/iruby-notebook

MAINTAINER Kozo Nishida <knishida@riken.jp>

ADD . /workdir
WORKDIR /workdir

USER root

RUN cd /workdir && gem install daru statsample rbplotly && \
    gem specific_install https://github.com/ruby-numo/narray.git && \
    gem specific_install https://github.com/genya0407/daru_plotly.git && \
    chown -R jovyan:users /workdir
    
