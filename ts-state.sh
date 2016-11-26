#!/bin/bash
# set -x
set -e

. ./ts-common.sh

./ts-status.sh $* | grep 'State:' | awk '{print $2}'
