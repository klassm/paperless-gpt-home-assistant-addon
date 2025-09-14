#!/bin/bash

echo "DEBUG: Starting run.sh"
echo "DEBUG: Paperless-related environment variable names:"
env | grep -i paperless | cut -d'=' -f1



cat /data/options.json

eval "$(
  jq -r '[paths(scalars) as $path | {
      key: $path | join("_") | ascii_upcase | gsub("-"; "_"),
      value: getpath($path)
    }] | .[] |
    "export \(.key)=\"\(.value | tostring)\""' \
  /data/options.json
)"

exec /app/paperless-gpt