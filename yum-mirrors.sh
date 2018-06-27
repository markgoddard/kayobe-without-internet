#!/bin/bash

set -e

sudo sed -i -e 's/mirror.centos.org/10.0.0.8:81/' -e 's/^#baseurl/baseurl/' -e 's/^mirrorlist/#mirrorlist/' /etc/yum.repos.d/CentOS-Base.repo
sudo yum -y install epel-release
sudo sed -i -e 's/download.fedoraproject.org/10.0.0.8:81/' -e 's/^#baseurl/baseurl/' -e 's/^metalink/#metalink/' /etc/yum.repos.d/epel.repo
