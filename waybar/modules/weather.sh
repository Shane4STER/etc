#!/bin/bash

STATION="EGPH"
CWX_API_KEY=$(secret-tool lookup application checkwx)

METAR=$(curl -s "https://api.checkwx.com/metar/$STATION" -H "X-API-Key: $CWX_API_KEY" | /usr/bin/jq --raw-output .data[0])

TAF=$(curl -s "https://api.checkwx.com/taf/$STATION" -H "X-API-Key: $CWX_API_KEY" | /usr/bin/jq --raw-output .data[0])

echo -e "{\"text\":\"${METAR}\", \"tooltip\":\"${TAF}\"}"
