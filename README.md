# schmaltz

Scripts for downloading torrents in Germany (and other countries where you can get fined for it)

The script spins up a box in the cloud (Digital Ocean) and downloads the torrent there.
Once the torrent is done it will be downloaded to your local box via secure ssh connection (rsync).
After that the remote machine is deleted.

## Requirements

1. Digital Ocean account
1. [add your own ssh key to Digital Ocean](https://www.digitalocean.com/community/tutorials/how-to-use-ssh-keys-with-digitalocean-droplets)
1. configured Digital Ocean client ([doctl](https://github.com/digitalocean/doctl))
1. get a torrent

## Usage

```bash
# list my ssh keys
$ doctl compute ssh-key list
ID      Name                    FingerPrint
XXYYZZ  my-key                  5a:28:6f:.....

# export my ssh-key id
$ export SSH_KEY_ID=XXYYZZ

# download a torrent
$ ./get-torrent.sh "magnet:?xt=urn......." && say 'Download completed!'
```

## TODO
- autogenerate the ssh key