#!/bin/sh

cd `dirname $0`

if [ ! -d buildroot/ ]
then
    echo "buildroot directory not found"
else
    cd buildroot
    make distclean
fi
