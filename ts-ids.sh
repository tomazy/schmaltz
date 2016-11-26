#!/bin/bash
# set -x
set -e

. ./ts-common.sh

./ts-list.sh | sed '1d;$d' | awk '{print $1}'
