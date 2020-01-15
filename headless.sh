#! /bin/bash

set +e

chromium --headless --disk-cache-dir=/dev/null --disable-gpu --download-whole-document --deterministic-fetch --incognito https://www.$1 2>/dev/null
