apk update && apk upgrade && apk add autoconf build-base linux-headers \
libaio-dev \
zlib-dev \
pcre-dev \
php7-dev \
php7-pecl \
git

mkdir -p /work
chmod 777 -R /work

php -r "if (hash_file('SHA384', '/work/composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php /work/composer-setup.php
php -r "unlink('/work/composer-setup.php');"
mv ./composer.phar /usr/bin/composer

composer require "twig/twig:^2.3"