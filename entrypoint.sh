#!/bin/sh

if [ -f /app/scripts/build.sh ]; then
  reflex -r '\.hs$' --start-service=true /app/scripts/build.sh
else
  echo "/app/scripts/build.sh was not found, auto-compile will not work!"
  while [ true ]; do sleep 1d; done
fi
