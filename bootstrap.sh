#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

whoami


# Replace the default apt-get mirror with closer mirrors
cat >/etc/apt/sources.list << EOL
  deb mirror://mirrors.ubuntu.com/mirrors.txt precise main restricted universe multiverse
  deb mirror://mirrors.ubuntu.com/mirrors.txt precise-updates main restricted universe multiverse
  deb mirror://mirrors.ubuntu.com/mirrors.txt precise-backports main restricted universe multiverse
  deb mirror://mirrors.ubuntu.com/mirrors.txt precise-security main restricted universe multiverse
EOL

# Run updates
apt-get update
apt-get upgrade -q -y

# Install required packages
apt-get -q -y install lighttpd php5-cgi php5-cli php-apc php5-mysql php5-gd php-pear acl git subversion varnish mysql-server curl ant

#Map /var/www to the vagrant directory
rm -rf /var/www
ln -fs /vagrant /var/www

# Enable PHP support in lighttpd
lighttpd-enable-mod fastcgi fastcgi-php
/etc/init.d/lighttpd restart

# Install composer and useful packages via composer
curl -s https://getcomposer.org/installer | php
su - vagrant -c "./composer.phar global require 'phpunit/phpunit=3.7.*'"

# Add the composer global vendor/bin path to .bashrc
su - vagrant -c "sed -i '1i export PATH=\"/home/vagrant/.composer/vendor/bin:$PATH\"' /home/vagrant/.bashrc"
