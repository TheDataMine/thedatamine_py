#!/bin/bash

# check if dist folder exists, remove if it does
if [ -d dist ]; then
    echo "removing dist directory"
    rm -r dist;
fi

# generate distribution archives
python3 setup.py sdist bdist_wheel;
