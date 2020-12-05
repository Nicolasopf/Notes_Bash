#!/bin/bash

if [ "$(id -u)" != "0" ]; then
    echo "You must be root!"
    exit
fi

if [[ -f note ]]; then
    chmod 5555 note
    chmod 555 notes
    mv note notes /usr/local/bin
    echo "Note installed correctly. Use: \"note YOUR INFINITE NOTE\" to add a new note. Use \"notes\" to read the notes"
else
    echo "You already installed note!"
fi
