#!/usr/bin/env bash

if [ `sudo apt-get -u upgrade --assume-no | grep -c 'will be upgraded'` -eq 0 ]; then
    exit 0
fi

echo "    Update "
exit 0
