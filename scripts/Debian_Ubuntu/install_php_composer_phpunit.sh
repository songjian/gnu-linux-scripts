#!/bin/bash
sudo apt install -y php
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/
composer -V
wget http://phar.phpunit.cn/phpunit-6.2.phar
chmod +x phpunit-6.2.phar
sudo mv phpunit-6.2.phar /usr/local/bin/phpunit
phpunit --version
