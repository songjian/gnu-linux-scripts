#!/bin/sh
git clone git@github.com:rvm/rvm.git /tmp/rvm && \
/tmp/rvm/binscripts/rvm-installer && \
. ~/.bashrc && \
. ~/.bash_profile && \

mkdir ~/.rvm/user/ && \
echo "ruby_url=https://cache.ruby-china.com/pub/ruby" > ~/.rvm/user/db

rvm install 2.7.2 --disable-binary && \
rvm use 2.7.2 --default && \
gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/ && \
gem i bundler && \
bundle config mirror.https://rubygems.org https://gems.ruby-china.com

#gem i bundler rails jekyll puma pg