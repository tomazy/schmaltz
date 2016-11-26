#!/bin/bash
# set -x
set -e

. ./ts-common.sh

$SSH "$TS -l"
