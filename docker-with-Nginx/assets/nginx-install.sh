#!/bin/bash

apt update
apt install nginx -y
ufw app list
rm -rf /etc/nginx/sites-enabled/default
