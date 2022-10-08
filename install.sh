#!/bin/bash

set -eou pipefail

lsblk
echo "select drive: "
read drive

echo "hostname: "
read hostname

echo "username: "
read username

sed -i "s/__DRIVE__/$drive/g" *.json
sed -i "s/__HOSTNAME__/$hostname/g" *.json
sed -i "s/__USERNAME__/$username/g" *.json

archinstall --config ./config.json --disk-layout ./disk-layout.json --creds ./creds.json
