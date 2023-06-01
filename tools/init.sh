#!/bin/bash

HOME="/home/isucon"
cd /home/isucon || exit

# $1: service name
# $2: file path
function init_setting_file() {
  echo "init $1"

  if [ ! -e "$HOME$2" ]; then
    mkdir -p "$HOME$2"
    sudo cp "$2" "$HOME$2"
    mv "$2" "$2.bkp"
    ln -sf "$HOME$2" "$2"
    git add "$HOME$2"
    git commit -m "backup $1 conf"
    git push
  fi
}

init_setting_file "mysql" "/etc/mysql/mysql.conf.d/mysqld.cnf"
init_setting_file "nginx" "/etc/nginx/nginx.conf"
