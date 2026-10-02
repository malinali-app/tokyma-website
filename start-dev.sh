#!/usr/bin/env bash
set -euo pipefail

if ! command -v hugo >/dev/null 2>&1; then
  echo "Hugo is not installed. See https://gohugo.io/installation/"
  exit 1
fi

hugo server --baseURL=http://localhost:1313/
