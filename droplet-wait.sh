#!/bin/bash

NAME=$1

echo "Waiting for '$NAME' to become active"
while true; do
  printf '.'
  STATUS=$(./droplet-list.sh $NAME|tail -n +2|cut -f 11)
  if [ "$STATUS" == "active" ]; then
    echo
    echo "droplet ready!"
    break;
  fi
  sleep 1
done

