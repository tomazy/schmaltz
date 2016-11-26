#!/bin/bash
# set -x
set -e

. ./ts-common.sh

TORRENT_ID="$1"

$SSH "$TS --add '$TORRENT_ID'"
