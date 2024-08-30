#!/bin/bash

# Get the window ID of the Chrome window with the Spotify URL
WINDOW_ID=$(xdotool search --onlyvisible --class chrome | while read -r id; do
  if xprop -id "$id" | grep -q "https://open\.spotify\.com"; then
    echo "$id"
    break
  fi
done)

# Check if a valid window ID was found
if [ -z "$WINDOW_ID" ]; then
  echo "Spotify window not found"
  exit 1
fi

# Activate the window and send the Play/Pause keypress
xdotool windowactivate --sync $WINDOW_ID key space
