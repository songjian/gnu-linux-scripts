#!/bin/bash
git clone https://github.com/phpenv/phpenv.git ~/.phpenv
echo 'export PATH="$HOME/.phpenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(phpenv init -)"' >> ~/.bash_profile
exec $SHELL -l
git clone https://github.com/php-build/php-build $(phpenv root)/plugins/php-build
