#!/usr/bin/env bash

if [  -n "$(uname -a | grep Ubuntu)" ]; then # Ubuntu
    sudo apt-get update
    sudo apt-get install -y libcurl4-openssl-dev
fi
