#!/bin/bash

dirname "$1" | xargs mkdir -p
touch "$1"
chmod +x "$1"

echo "#!/usr/bin/env racket" >> "$1"
echo "#lang sicp" >> "$1"
