#!/usr/bin/env bash

if uname -a | grep -q Ubuntu; then # Ubuntu
    sudo apt-get update
    sudo apt-get install -y libcurl4-openssl-dev
fi
