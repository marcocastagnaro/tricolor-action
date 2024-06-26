#!/bin/sh

set -e

echo "$INPUT_KEY" > /tmp/private_key
chmod 600 /tmp/private_key

ssh -i /tmp/private_key -o StrictHostKeyChecking=no -p "$INPUT_PORT" "$INPUT_USERNAME@$INPUT_HOST" "$INPUT_SCRIPT"
