#!/bin/bash

set -e
set -x

cd `dirname $0`

cd lc3tools
./configure
make
make install
cd ..

cd lcc-1.3
./configure
make
make install
cd ..
