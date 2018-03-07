#!/bin/bash
case $(uname -s) in
  *Darwin*)
    INFO_FILE="$HOME/Library/Application Support/Google Play Music Desktop Player/json_store/playback.json"
    ;;
  *Linux*)
    INFO_FILE="$HOME/.config/Google Play Music Desktop Player/json_store/playback.json"
    ;;
esac
SEPERATOR='-'
ARTIST=$(jq -c -M -r .song.artist "$INFO_FILE")
TRACK=$(jq -c -M -r .song.title "$INFO_FILE")
PLAYING=$(jq -c -M -r .playing "$INFO_FILE")

if [[ "$PLAYING" == "true"  ]]; then
  PLAYSYMBOL="▶"
else
  PLAYSYMBOL="❚❚"
fi
if [[ "$TRACK" == "null" ]]; then
  OUTPUT="◼"
else
  OUTPUT="$PLAYSYMBOL $ARTIST $SEPERATOR $TRACK"
fi
echo -n "$OUTPUT"
