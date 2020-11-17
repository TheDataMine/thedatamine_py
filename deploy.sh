#!/bin/bash

# Check if dist folder exists, and exit if no
if [ ! -d dist ]; then
    echo "Deploy failed. Build package first: ./build.sh"
    exit 1
fi

# Test deploy or deploy
if python3 -m twine check dist/*; then
    if [ "$1" = "--test" ]; then
        python3 -m twine upload --repository testpypi dist/*;
    else
        python3 -m twine upload dist/*;
    fi
fi