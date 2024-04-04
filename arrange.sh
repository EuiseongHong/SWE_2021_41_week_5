#!/bin/bash

for file in files/*; do
   if [ -n "$file" ]; then
        lowercase_file=$(basename "$file" | tr '[:upper:]' '[:lower:]')
        first_char=$(basename "$lowercase_file" | head -c 1)
        mv "$file" "$first_char/"
    fi
done