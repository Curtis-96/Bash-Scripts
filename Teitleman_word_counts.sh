#!/bin/bash

file = $1

if [[ -z "$file" ]]; then
  echo "File input left blank"
fi

l = 1
i = 0

while read -r line; do
  echo "Line $l: $(echo $line | wc -w)"
  l=$(( $l + 1 ))
done < $file
