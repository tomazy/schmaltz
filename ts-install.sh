#!/bin/bash
# set -x
set -e

. ./ts-common.sh

until $SSH 'whoami'
do
  echo "waiting for sshd"
  sleep 1
done

$SSH "\
sudo add-apt-repository ppa:transmissionbt/ppa && \
sudo apt-get update && \
sudo apt-get -y install transmission-cli transmission-common transmission-daemon && \
sed -i 's/.*rpc-bind-address.*/    \"rpc-bind-address\": \"127.0.0.1\",/' /etc/transmission-daemon/settings.json && \
sed -i 's/.*rpc-password.*/    \"rpc-password\": \"{c9abe745c068c531fde96c773d28eea26fa9a5e6ct69XjQB\",/' /etc/transmission-daemon/settings.json && \
sudo service transmission-daemon start && \
echo 'DONE!'
"