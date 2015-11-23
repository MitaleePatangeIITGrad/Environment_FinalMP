#!/bin/bash

sudo apt-get -y update

sudo apt-get -y install apache2 git php5 php5-curl mysql-client curl php5-mysql php5-imagick imagemagick
sudo phpp5enmod imagick
sudo service apache2 reload

git clone https://github.com/MitPat/Application_FinalMP.git

mv ./Application_FinalMP/images /var/www/html/images

mv ./Application_FinalMP/*.html /var/www/html

mv ./Application_FinalMP/*.php /var/www/html

mv ./Application_FinalMP/css /var/www/html/css

mv ./Application_FinalMP/js /var/www/html/js

mv ./Application_FinalMP/img /var/www/html/img

curl -sS https://getcomposer.org/installer | sudo php &> /tmp/getcomposer.txt

sudo php composer.phar require aws/aws-sdk-php &> /tmp/runcomposer.txt

sudo mv vendor /var/www/html &> /tmp/movevendor.txt

echo "The installation has succeeded" > /tmp/Hello.txt




