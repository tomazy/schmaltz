#!/bin/bash

NAME=$1

./droplet-list.sh $NAME | tail -n +2 | awk '{print $3}'

