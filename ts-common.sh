IP=$(cat ./ip)
USER=root
SSH_PORT=22
SSH_WITHOUT_IP="ssh -q -p $SSH_PORT -l $USER -o ServerAliveInterval=30 -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"
SSH="$SSH_WITHOUT_IP $IP"
TS="transmission-remote -n 'transmission:transmission'"
