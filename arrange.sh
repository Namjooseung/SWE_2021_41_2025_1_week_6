#!/bin/bash

if [[ ! -d "files" ]]; then
  exit 1
fi

for filepath in files/*; do
  if [[ -f "$filepath" ]]; then
    filename="${filepath##*/}"         
    first_char="${filename:0:1}"
    lowercase=$(echo "$first_char" | tr 'A-Z' 'a-z')
    target_dir="./$lowercase"

    if [[ -d "$target_dir" ]]; then
      mv "$filepath" "$target_dir/"
    fi
  fi
done
