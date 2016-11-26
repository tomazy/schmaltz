#!/bin/bash
# set -x
set -e

until ./ts-ids.sh|xargs -L 1 ./ts-done.sh
do
  ./ts-list.sh
  sleep 1
done
