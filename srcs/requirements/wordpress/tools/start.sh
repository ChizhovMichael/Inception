#!/bin/sh

perl -pe 's/\$([_A-Z]+)/$ENV{$1}/g' < /var/www/html/wp-config-sample.php > /var/www/html/wp-config.php
rm /var/www/html/wp-config-sample.php

# install wp and users
sleep 5;
wp-cli --path=/var/www/html core install  --title=Wordpress --admin_user=tgildero --admin_password=4694045 --admin_email=sdf@sdf.ru --url=localhost
wp-cli --path=/var/www/html user create user1 sdf1@sdf.ru --role=editor --user_pass=1234qwer

openrc
touch /run/openrc/softlevel
/usr/bin/supervisord -c /etc/supervisord.conf
# bash