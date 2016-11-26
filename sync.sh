#!/bin/bash
# set -x
set -e

. ./ts-common.sh

REMOTE_DOWNLOADS=/var/lib/transmission-daemon/downloads/

rsync -avz --progress --partial -e "$SSH_WITHOUT_IP" $USER@$IP:$REMOTE_DOWNLOADS ./downloads/