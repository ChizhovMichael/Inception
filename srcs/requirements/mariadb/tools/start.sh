#!/bin/bash

openrc
touch /run/openrc/softlevel
/usr/bin/mysql_install_db --datadir=/var/lib/mysql
/usr/bin/mysqld --datadir='/var/lib/mysql'
# bash