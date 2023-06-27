#!/bin/bash

while read -r line; do
    filename=$(echo "$line" | awk '{print $NF}')
    permissions=$(stat -c "%a" "$filename")
    echo "$permissions" "$filename"
done
