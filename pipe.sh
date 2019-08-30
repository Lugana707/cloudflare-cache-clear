#!/bin/bash

set -e

for file in "${URL_CACHE_PATHS[@]}"; do
    curl \
        -X POST "https://api.cloudflare.com/client/v4/zones/$CLOUDFLARE_ZONE/purge_cache" \
        -H "X-Auth-Email:$CLOUDFLARE_AUTH_EMAIL" \
        -H "X-Auth-Key:$CLOUDFLARE_AUTH_KEY" \
        -H "Content-Type:application/json" \
        --data "$(jq -n -c -r --arg files "$file" '{ files: [$files] }')"
done
