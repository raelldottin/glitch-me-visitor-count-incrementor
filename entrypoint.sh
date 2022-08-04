#!/bin/bash
# This script entrypoint for our GitHub Action
# It will fetch a url

URL="https://visitor-badge.glitch.me/badge?page_id=$INPUT_PAGE_ID"

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
    curl -sLH "user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36" "$URL"
fi
