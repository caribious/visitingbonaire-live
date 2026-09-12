#!/usr/bin/env bash
# Rendert collage.html naar een 1080x1920 PNG (Stories/Reels-formaat).
# Gebruik: ./render.sh [uitvoerbestand.png]
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUT="${1:-$DIR/collage-9x16.png}"
CHROME="${CHROME:-/opt/pw-browsers/chromium-1194/chrome-linux/chrome}"
[ -x "$CHROME" ] || CHROME="$(command -v chromium || command -v google-chrome)"
"$CHROME" --headless=new --no-sandbox --disable-gpu --hide-scrollbars \
  --force-device-scale-factor=1 --window-size=1080,1920 --virtual-time-budget=6000 \
  --screenshot="$OUT" "file://$DIR/collage.html" >/dev/null 2>&1
echo "geschreven: $OUT"
