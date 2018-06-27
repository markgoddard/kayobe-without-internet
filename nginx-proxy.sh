#!/bin/bash

set -e

cat << EOF | sudo tee /etc/yum.repos.d/nginx.repo
[nginx]
name=nginx repo
baseurl=http://nginx.org/packages/centos/\$releasever/\$basearch/
gpgcheck=0
enabled=1
EOF
sudo yum -y install nginx
cat << EOF | sudo tee /etc/nginx/conf.d/mirrors.conf
server {
    listen 81;
    location /pypi/ {
        proxy_pass https://pypi.org/;
    }

    location /centos/ {
        proxy_pass http://mirror.centos.org/centos/;
    }

    location /pub/epel/ {
#        proxy_pass https://download.fedoraproject.org/pub/epel/;
         proxy_pass https://anorien.csc.warwick.ac.uk/mirrors/epel/;
    }

    location /github/ {
        proxy_pass https://github.com/;
    }

    location /docker/ {
        proxy_pass https://yum.dockerproject.org/;
    }
}
EOF
sudo systemctl enable nginx
sudo systemctl restart nginx
