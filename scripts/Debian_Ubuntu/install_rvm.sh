#!/bin/bash
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && \
\curl -sSL https://get.rvm.io | bash -s stable && \


:' 国内
git clone git@github.com:rvm/rvm.git /tmp/rvm
/tmp/rvm/binscripts/rvm-installer
. ~/.bashrc
. ~/.bash_profile
mkdir ~/.rvm/user/
echo "ruby_url=https://cache.ruby-china.com/pub/ruby" > ~/.rvm/user/db
'

rvm install 2.7.2 --disable-binary && \
rvm use 2.7.2 --default && \
gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/ && \
gem i bundler && \
#gem i bundler rails jekyll puma pg
bundle config mirror.https://rubygems.org https://gems.ruby-china.com
