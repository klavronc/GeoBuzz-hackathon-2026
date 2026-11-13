#!/usr/bin/env bash
# Encrypts src/index.html into docs/index.html (the only file GitHub Pages serves).
# Usage: ./encrypt.sh            (asks for the password)
set -euo pipefail
cd "$(dirname "$0")"

read -r -s -p "Password for the page: " PW; echo

npx --yes staticrypt@3 src/index.html \
  --directory docs \
  --password "$PW" \
  --short \
  --remember 1 \
  --template-title "GeoBuzz Hackathon 2026" \
  --template-instructions "The password is on your table card." \
  --template-button "Open" \
  --template-color-primary "#16365C" \
  --template-color-secondary "#F6F7F9"

touch docs/.nojekyll
echo "Done: docs/index.html is encrypted. Commit and push docs/ only."
