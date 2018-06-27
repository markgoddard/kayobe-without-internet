#!/bin/bash

set -e

cat << EOF | sudo tee /etc/pip.conf
[global]
index-url=http://10.0.0.8:81/pypi
trusted-host=10.0.0.8
EOF
