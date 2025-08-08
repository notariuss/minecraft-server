#!/usr/bin/env bash
set -e

# If volume is empty (first boot), seed it with the image's original /opt content
if [ -z "$(ls -A /opt 2>/dev/null)" ] || [ ! -e /opt/fsm-data ]; then
  echo "[init] Seeding /opt from /opt.image..."
  cp -a /opt.image/. /opt/
fi

exec "$@"
