#!/bin/bash

sudo apt install -y gnupg2 libpq-dev
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
. ~/.bashrc
. ~/.bash_profile
echo "ruby_url=https://cache.ruby-china.com/pub/ruby" > ~/.rvm/user/db
rvm install 2.7.2 --disable-binary
rvm use 2.7.2 --default
gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/
gem i bundler rails jekyll puma pg
bundle config mirror.https://rubygems.org https://gems.ruby-china.com

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install -y nodejs
sudo npm install -g yarn
