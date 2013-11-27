#!/bin/bash

while read -r name clone
do
    if [[ ! -d "$name" ]]; then
        git clone $clone $name
    else
        (cd $name; git pull)
    fi
done < "from_github.txt"


