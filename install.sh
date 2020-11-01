#!/bin/bash

if [ "$(id -u)" != "0" ]; then
    echo "You must be root!"
    exit
fi

if [[ -f note ]]; then
    chmod 555 note
    mv note notes /usr/local/bin
fi
