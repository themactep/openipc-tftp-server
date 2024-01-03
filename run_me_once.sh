#!/bin/sh

TFTP_DIR=./tftp

if [ ! -d "$TFTP_DIR" ]; then
       mkdir -p "$TFTP_DIR"
fi

sudo chown systemd-network:input "$TFTP_DIR"

docker compose build

chmod -x $0

echo "Done"
exit 0
