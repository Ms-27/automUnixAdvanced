#!/bin/bash

for file in $HOME/*; do
    echo "$(basename "$file")"
done