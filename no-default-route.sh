#!bin/bash

set -e

sudo ip r del default
# PyPI mirror not working yet - add a route for it.
sudo ip r add 151.101/16 via 10.0.0.1
