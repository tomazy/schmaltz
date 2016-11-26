#!/bin/bash
set -e

TORRENT=$1

DROPLET_NAME=tworker

./droplet-create.sh $DROPLET_NAME
./droplet-wait.sh $DROPLET_NAME
./droplet-ip.sh > ./ip

./ts-install.sh
./ts-add.sh $TORRENT

./ts-wait.sh

./ts-ids.sh | xargs -L 1 ./ts-stop.sh

./sync.sh

./droplet-delete.sh --force $DROPLET_NAME

rm ./ip

echo "done!"