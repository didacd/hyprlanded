#!/usr/bin/env bash

# Check if swaync-client exists in path
if ! command -v swaync-client &>/dev/null; then
  echo "swaync-client could not be found. Please install it to use notifications."
  exit 1
fi

count=$(swaync-client -c)

# Optional: Use emoji/icons (you can change this)
if [ "$count" -gt 0 ]; then
  echo "{\"text\": \"󱥁 $count\", \"class\": \"has-notifications\"}"
else
  echo "{\"text\": \" 0\", \"class\": \"no-notifications\"}"
fi
