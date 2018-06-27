#!/bin/bash

set -e

git clone http://10.0.0.8:81/github/openstack/kayobe
cd kayobe
mkdir -p config/src/kayobe-config
git clone http://10.0.0.8:81/github/stackhpc/dev-kayobe-config config/src/kayobe-config
