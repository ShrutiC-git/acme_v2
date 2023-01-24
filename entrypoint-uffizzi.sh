#!/bin/sh

# https://hub.docker.com/r/neilpang/acme.sh/dockerfile
if [ ! -f /acme.sh/account.conf ]; then
    echo 'First startup'
    acme.sh --update-account --accountemail test@test.com
fi

# Make the container keep running
/entry.sh daemon