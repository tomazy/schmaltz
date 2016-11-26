#!/bin/bash
# set -x
set -e

. ./ts-common.sh

TORRENT_ID="$1"

$SSH "$TS --torrent $TORRENT_ID --remove"
