#!/bin/bash
# set -x
set -e

. ./ts-common.sh

TORRENT_ID="$1"

STATUS=$(./ts-status.sh $TORRENT_ID)

echo "$STATUS" | grep "Percent Done: 100%"
echo "$STATUS" | grep 'State' | grep -v 'Downloading'