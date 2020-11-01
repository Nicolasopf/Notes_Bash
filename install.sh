#!/bin/bash

if [ "$(id -u)" != "0" ]; then
    echo "You must be root!"
    exit
fi

if [[ -f note ]]; then
    chmod 555 note
    mv note notes /usr/local/bin
    echo "Note installed correctly. Use \"note YOUR NOTE INFINITE\" to add a new note, use \"notes\" to read the notes"
else
    echo "You already installed note!"
fi
