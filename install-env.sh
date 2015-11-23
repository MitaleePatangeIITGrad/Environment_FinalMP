#!/bin/bash

sudo apt-get -y update

sudo apt-get -y install apache2 git php5 php5-curl mysql-client curl php5-mysql

git clone https://github.com/MitPat/Application_MP2.git

mv ./Application_MP2/images /var/www/html/images

mv ./Application_MP2/*.html /var/www/html

mv ./Application_MP2/*.php /var/www/html

mv ./Application_MP2/css /var/www/html/css

mv ./Application_MP2/js /var/www/html/js

mv ./Application_MP2/img /var/www/html/img

curl -sS https://getcomposer.org/installer | sudo php &> /tmp/getcomposer.txt

sudo php composer.phar require aws/aws-sdk-php &> /tmp/runcomposer.txt

sudo mv vendor /var/www/html &> /tmp/movevendor.txt

echo "The installation has succeeded" > /tmp/Hello.txt




