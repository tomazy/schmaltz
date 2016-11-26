#!/bin/bash
set -e

if [ -z "$SSH_KEY_ID" ]; then
  echo "Missing SSH_KEY_ID variable! Use one of the following:"
  doctl compute ssh-key list
  exit 1
fi

NAME=$1

REGION=nyc1
IMAGE=ubuntu-16-04-x32
SIZE=512mb

doctl compute droplet create $NAME --region $REGION --image $IMAGE --size $SIZE --ssh-keys $SSH_KEY_ID