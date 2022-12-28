#!/bin/bash
git clone git@github.com:rvm/rvm.git /tmp/rvm && \
/tmp/rvm/binscripts/rvm-installer && \
. ~/.bashrc && \
. ~/.bash_profile && \

# install ruby 2.7.2
rvm install 2.7.2 --disable-binary \
    && rvm use 2.7.2 --default \
    && gem i bundler \
    # && gem i bundler rails jekyll puma pg
