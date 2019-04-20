#!/bin/bash

set -e
set -x

cd `dirname $0`

cd lc3tools
rm -f *.obj *.sym
./configure
make
make install
rm -f *.obj *.sym
cd ..

cd lcc-1.3
./configure
make
make install
cd ..
