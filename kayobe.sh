#!/bin/bash

set -e

git clone http://10.0.0.8:81/github/openstack/kayobe
mkdir -p kayobe/config/src
ln -s $(pwd)/kayobe-config $(pwd)/kayobe/config/src
