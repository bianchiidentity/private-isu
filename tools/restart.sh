#!/bin/bash
set -Ceu
cd /home/isucon/
git pull
sudo /usr/sbin/nginx -t
sudo service nginx restart
