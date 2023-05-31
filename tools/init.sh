#!/bin/bash

cd /home/isucon || exit

# nginx
if [ ! -e "/home/isucon/etc/nginx/nginx.conf" ]; then
  mkdir -p /home/isucon/etc/nginx/
  sudo cp /etc/nginx/nginx.conf /home/isucon/etc/nginx/nginx.conf
  ln -sf /home/isucon/etc/nginx/nginx.conf /etc/nginx/nginx.conf
  git add /home/isucon/etc/nginx/nginx.conf
  git commit -m "backup nginx.conf"
  git push
fi

# mysql
if [ ! -e "/home/isucon/etc/mysql/mysql.conf.d/mysqld.cnf" ]; then
  mkdir -p /home/isucon/etc/mysql/mysql.conf.d
  sudo cp /etc/mysql/mysql.conf.d/mysqld.cnf /home/isucon/etc/mysql/mysql.conf.d/mysqld.cnf
  ln -sf /home/isucon/etc/mysql/mysql.conf.d/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
  git add /home/isucon/etc/mysql/mysql.conf.d/mysqld.cnf
  git commit -m "backup mysqld.cnf"
  git push
fi
